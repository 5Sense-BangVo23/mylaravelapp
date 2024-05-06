<div>
    <h1>{{ $failureMessage }}</h1>
    @if(isset($media->file_url))
        <a href="{{ $media->file_url }}"></a>
    @endif
    <p>There was an error uploading the file to Cloudinary. Please try again.</p>
</div>
