<x-guest-layout>
    @php
        $title = config('app.site_name');
        $description = 'Media Management Dashboard';
        $urlPath = request()->path();
        $urlFull = request()->fullUrl();
        $image = config('app.asset_function')('images/favicons/favicon-32x32.png');
    @endphp

    <x-slot name="title">Media Management</x-slot>

    <x-slot name="meta">
        <meta name="description" content="{{ $description }}">
        <meta property="og:description" content="{{ $description }}" />
        <meta property="og:url" content="{{ $urlFull }}" />
        <meta property="og:path" content="{{ $urlPath }}" />
        <meta property="og:image" content="{{ $image }}" />
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>

    <x-slot name="head">
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/kpop/dashboard.css') }}">
        <script src="{{ config('app.asset_function')('js/kpop/dashboard.js') }}" defer></script>
    </x-slot>

    <div class="admin-container">
        <!-- Custom Navigation Bar -->
        <livewire:kpop-navbar />



        <!-- Main Content Area -->
        <main class="main-content">
            <header class="dashboard-header">
                <h1>Welcome to the Media Management Dashboard</h1>
                <p>Manage all Kpop media resources efficiently.</p>
            </header>

            <!-- Add additional sections here as needed -->
        </main>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; {{ date('Y') }} {{ config('app.site_name') }}. All rights reserved.</p>
    </footer>

    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
</x-guest-layout>
