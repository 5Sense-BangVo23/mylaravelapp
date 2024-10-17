<nav class="navbar">
    <div class="navbar-brand">{{ config('app.site_name') }}</div>
    <ul class="navbar-links">
        <li><a href="#">Dashboard</a></li>
        <li><a href="{{ route('kpop.groups') }}">Kpop Groups</a></li>
        <li><a href="{{ route('kpop.members') }}">Kpop Members</a></li>
        <li><a href="{{ route('kpop.fanclubs') }}">Kpop Fan Clubs</a></li>
        <li><a href="{{ route('kpop.settings') }}">Settings</a></li>
        <li>
            <form method="POST" action="{{ route('kpop.logout') }}" style="display:inline;">
                @csrf
                <button type="submit" class="logout-button">Logout</button>
            </form>
        </li>
    </ul>
</nav>
