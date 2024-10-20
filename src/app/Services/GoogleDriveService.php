<?php

namespace App\Services;

use App\Models\GoogleDriveFile;
use App\Models\KpopGroup;
use Exception;
use Google\Client;
use Google\Service\Drive;
use Google\Service\Drive\DriveFile;
use Illuminate\Support\Facades\Log;

class GoogleDriveService
{
    private $client;

    public function __construct()
    {
        $this->client = new Client();
        $this->client->setApplicationName('Kpop Admin');
        $this->client->setScopes([Drive::DRIVE_FILE]);
        $this->client->setClientId(env('GOOGLE_DRIVE_CLIENT_ID'));
        $this->client->setClientSecret(env('GOOGLE_DRIVE_CLIENT_SECRET'));
        $this->client->setAccessType('offline');
        $this->client->setSubject(env('GOOGLE_DRIVE_SERVICE_ACCOUNT_EMAIL'));
        $this->client->setConfig('timeout', 30);
    }

    public function uploadFile($file, $groupId, $urlType)
    {
        $maxRetries = 5;
        $retryDelay = 2; // Start with 2 seconds
        $refreshToken = env('GOOGLE_DRIVE_REFRESH_TOKEN');

        if (!$refreshToken) {
            throw new Exception('Refresh token not set in environment variables.');
        }

        $this->client->refreshToken($refreshToken);

        if ($this->client->isAccessTokenExpired()) {
            $accessToken = $this->client->fetchAccessTokenWithRefreshToken($refreshToken);
            $this->client->setAccessToken($accessToken);
        }

        $groupName = KpopGroup::find($groupId)->name;
        $driveService = new Drive($this->client);
        $folderId = $this->getOrCreateFolder($driveService, $urlType, $groupName);

        $fileMetadata = new DriveFile([
            'name' => $file->getClientOriginalName(),
            'parents' => [$folderId],
        ]);

        $content = file_get_contents($file->getRealPath());

        for ($attempt = 0; $attempt < $maxRetries; $attempt++) {
            try {
                $uploadedFile = $driveService->files->create($fileMetadata, [
                    'data' => $content,
                    'mimeType' => $file->getMimeType(),
                    'uploadType' => 'multipart',
                    'fields' => 'id',
                ]);

                $fileId = $uploadedFile->id;
                $googleDriveUrl = $this->getGoogleDriveFileUrl($fileId);

                $googleDriveFileData = [
                    'file_name' => $file->getClientOriginalName(),
                    'google_drive_id' => $fileId,
                    'mime_type' => $file->getClientMimeType(),
                    'size' => $file->getSize(),
                    'google_drive_url' => $googleDriveUrl,
                    'kpop_group_id' => $groupId,
                    'url_type' => $urlType,
                ];

                Log::info('File uploaded successfully: ' . $fileId);
                return GoogleDriveFile::create($googleDriveFileData);

            } catch (Exception $e) {
                if ($e->getCode() == 403 || $e->getCode() == 429) {
                    Log::warning("Error uploading file. Attempt: $attempt, Error: " . $e->getMessage());
                    sleep($retryDelay);
                    $retryDelay *= 2; 
                } else {
                    Log::error('Error uploading file: ' . $e->getMessage());
                    throw new Exception('Error uploading file to Google Drive: ' . $e->getMessage());
                }
            }
        }

        throw new Exception('Max retries exceeded for uploading file to Google Drive.');
    }

    private function getGoogleDriveFileUrl($fileId)
    {
        $apiKey = env('GOOGLE_DRIVE_API_KEY');

        if (empty($apiKey)) {
            throw new Exception('Google Drive API Key not set in environment variables.');
        }

        return 'https://www.googleapis.com/drive/v3/files/' . $fileId . '?key=' . $apiKey . '&alt=media';
    }

    private function getOrCreateFolder($driveService, $urlType, $groupName)
    {
        $urlTypeFolderResponse = $driveService->files->listFiles([
            'q' => "mimeType='application/vnd.google-apps.folder' and name='$urlType' and trashed=false",
            'fields' => 'files(id, name)',
        ]);

        if (count($urlTypeFolderResponse->files) > 0) {
            $urlTypeFolderId = $urlTypeFolderResponse->files[0]->id;

            $groupFolderResponse = $driveService->files->listFiles([
                'q' => "mimeType='application/vnd.google-apps.folder' and name='$groupName' and '$urlTypeFolderId' in parents and trashed=false",
                'fields' => 'files(id, name)',
            ]);

            if (count($groupFolderResponse->files) > 0) {
                return $groupFolderResponse->files[0]->id;
            } else {
                return $this->createGroupFolder($driveService, $urlTypeFolderId, $groupName);
            }
        } else {
            $folderMetadata = new DriveFile([
                'name' => $urlType,
                'mimeType' => 'application/vnd.google-apps.folder',
                'parents' => [env('GOOGLE_DRIVE_FOLDER_ID')]
            ]);

            $urlTypeFolder = $driveService->files->create($folderMetadata, [
                'fields' => 'id',
            ]);

            Log::info("Created new folder for urlType: $urlType, Folder ID: " . $urlTypeFolder->id);
            return $this->createGroupFolder($driveService, $urlTypeFolder->id, $groupName);
        }
    }

    private function createGroupFolder($driveService, $urlTypeFolderId, $groupName)
    {
        $groupFolderMetadata = new DriveFile([
            'name' => $groupName,
            'mimeType' => 'application/vnd.google-apps.folder',
            'parents' => [$urlTypeFolderId]
        ]);

        $groupFolder = $driveService->files->create($groupFolderMetadata, [
            'fields' => 'id',
        ]);

        Log::info("Created new folder for group: $groupName, Folder ID: " . $groupFolder->id);
        return $groupFolder->id;
    }
}
