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
    <!-- Header -->
    @livewire('common-header', [
        'layout' => 'app',
        'title' => $title ?? null,
    ])
    {{ $slot }}
    <!-- Footer -->
    @livewire('common-footer', [
        'layout' => 'app',
        'title' => $title ?? null,
    ])
    <!-- Component BackToTop -->
    @livewire('back-to-top')
    @livewireScripts
</body>
</html>
