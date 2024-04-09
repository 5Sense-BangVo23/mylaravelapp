<?php

namespace App\Http\Controllers\Livewire\Post;

use Livewire\Component;

class Comment extends Component
{
    public $comments = [];
    public $author;
    public $content;


    public function mount($comments)
    {
        $this->comments = $comments;
    }

    public function render()
    {
        return view('livewire.post.comment', [
            'comments' => $this->comments,
        ]);
    }

    public function addComment()
    {

        $newComment = [
            'author' => $this->author,
            'content' => $this->content,
            'date' => now()->toDateString(),
        ];

        $this->comments[] = $newComment;

        $this->author = '';
        $this->content = '';
    }
}
