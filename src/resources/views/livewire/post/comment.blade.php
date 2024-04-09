<style>
    /* Styles for comments section */
.comments-container {
    margin-top: 20px;
}

.comments-heading {
    font-size: 1.5rem;
    color: #333;
}

.comment {
    margin-bottom: 20px;
    border-bottom: 1px solid #ccc;
    padding-bottom: 10px;
}

.author {
    font-weight: bold;
    color: #555;
}

.comment-date {
    color: #777;
}

.comment-content {
    margin-top: 5px;
}

/* Styles for comment form */
.comment-form {
    margin-top: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-control {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.btn {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn:hover {
    background-color: #0056b3;
}

</style>

<div class="comments-container">
    <section class="comments">
        <h2 class="comments-heading">Comments ({{ count($comments) }})</h2>
        @foreach($comments as $comment)
            <div class="comment">
                <p class="author"><strong>{{ $comment['author'] }}</strong></p>
                <p class="date">Posted on <span class="comment-date">{{ $comment['date'] }}</span></p>
                <p class="comment-content">{{ $comment['content'] }}</p>
            </div>
        @endforeach
    </section>

    <form class="comment-form" wire:submit.prevent="addComment">
        <div class="form-group">
            <label for="author">Your Name:</label>
            <input type="text" id="author" class="form-control" wire:model="author">
        </div>
        <div class="form-group">
            <label for="content">Your Comment:</label>
            <textarea id="content" class="form-control" wire:model="content"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit Comment</button>
    </form>
</div>

