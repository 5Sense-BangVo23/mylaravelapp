<?php

namespace App\Events;

use App\Models\Media;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class FileUploaded
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public bool $isSuccess;
    public string $message;
    public $media;

    /**
     * Create a new event instance.
     *
     * @param $user
     * @param $isSuccess
     */
    public function __construct(bool $isSuccess,string $message, Media $media)
    {
        $this->isSuccess = $isSuccess;
        $this->message = $message;
        $this->media = $media;
    }
}
