<div>
    <h1>{{ $uploadMessage }}</h1>
    @if(isset($media->file_url))
        <a href="{{ $media->file_url }}">View uploaded file</a>
    @endif
    <p>Uploaded successfully!</p>
</div>
