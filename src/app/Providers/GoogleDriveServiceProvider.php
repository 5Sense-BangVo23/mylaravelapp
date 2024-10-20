<?php

namespace App\Providers;

use Google\Service\Drive\Drive;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\ServiceProvider;
use League\Flysystem\Filesystem;
use Masbug\Flysystem\GoogleDriveAdapter;

class GoogleDriveServiceProvider extends ServiceProvider
{
   public function register()
   {
       
   }

    public function boot()
    {
        Storage::extend("google",function($app,$config){
            
            $client = new \Google_Client();
            $client->setClientId($config['clientId']);
            $client->setClientSecret($config['clientSecret']);
            $client->refreshToken($config['refreshToken']);
            $client->setScopes(array("https://www.googleapis.com/auth/drive.file"));
            $client->setAccessType('offline');
            $client->setApprovalPrompt('force');
            $client->setPrompt('consent');
            $client->setSubject(env('accountEmail'));
            $client->setConfig('timeout', 30); 

           
            
            $service = new Drive($client);
            $adapter = new GoogleDriveAdapter($service,$config['folderId']);

            return new Filesystem($adapter);

        });
    }

}