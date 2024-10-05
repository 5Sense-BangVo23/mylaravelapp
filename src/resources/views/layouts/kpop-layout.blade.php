<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    @livewireStyles   
    @livewire('common-head', [
        'layout' => 'app',
        'title' => $title ?? null,
        'head' => $head ?? null,
        'meta' => $meta ?? null,
    ])

</head>
<body>
    <div>
        {{ $slot }}
    </div>
   
    @livewireScripts
</body>
</html>
