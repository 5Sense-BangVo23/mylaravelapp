<x-guest-layout>
    <x-slot name="title">Kpop Fan Clubs Management</x-slot>
    <x-slot name="meta">
        <meta name="description" content="Manage Kpop Fan Clubs efficiently.">
    </x-slot>
    <x-slot name="head">
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/kpop/dashboard.css') }}">
        <script src="{{ config('app.asset_function')('js/kpop/dashboard.js') }}" defer></script>
    </x-slot>
    <div class="admin-container">
        <livewire:kpop-navbar />
        <main class="main-content">
            <header class="dashboard-header">
                <h1>Manage Kpop Fan Clubs</h1>
                <p>Efficiently manage your Kpop fan clubs here.</p>
        </main>
    </div>
</x-guest-layout>
