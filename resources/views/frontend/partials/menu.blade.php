<ul class="navigation-main d-inline nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">
    <li class="nav-item">
        <a class="nav-link align-items-center" href="{{ route('mmn') }}">
            <i class="ft-bar-chart-2"></i>
            <span data-i18n="Home">MMN</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link align-items-center " href="{{ route('jtse') }}">
            <i class="ft-bar-chart-2"></i>
            <span data-i18n="nearby">JTSE</span>
        </a>
    </li>
</ul>
    
@guest
<ul class="navigation-main d-inline nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">
    <li class="nav-item">
        <a class="nav-link align-items-center red" id="red" href="{{ route('login') }}">
            <i class="ft-log-in"></i>
            <span data-i18n="billboard">Login</span>
        </a>
    </li>
</ul>
@else
<ul class="navigation-main d-inline nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation">
    <li class="nav-item">
        <a class="nav-link align-items-center " href="{{ route('mmn') }}">
            <i class="ft-user"></i>
            <span data-i18n="billboard">Profil</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link align-items-center " href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
            <i class="ft-log-out"></i>
            <span data-i18n="billboard">Keluar</span>
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
    </li>
</ul>
@endguest
    