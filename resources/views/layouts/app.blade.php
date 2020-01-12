<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', "Restaurant Cache") }}@yield('title')</title>

    <!-- Scripts -->
    <script src="{{ mix('js/app.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ mix('css/app.css') }}" rel="stylesheet">

    <link rel="icon" href="/images/favicon.ico"> 
</head>
<body>    
    <div id="app" class="container">
        <div class="top-bar">
            <div>Sunati-ne la 0723.86.85.85</div>
            <div><a href="#">dand o directie</a></div>
        </div>            
        <header>
            <a href="/"><img src="/images/logo.png"></a>
            <nav>
                <ul>
                    <li><a href="/">Acasa</a></li>
                    <li class="separator"></li>
                    <li><a href="#">Despre</a></li>
                    <li class="separator"></li>
                    <li><a href="/menu">Menu</a></li>
                    <li class="separator"></li>
                    <li><a href="#">Rezervari</a></li>
                    <li class="separator"></li>
                    <li><a href="#">Locatie &amp; Program</a></li>
                    <li class="separator"></li>
                    <li><a href="#">Contact</a></li>
                    <li class="separator"></li>
                    @guest
                        <li>
                            <a href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        <li class="separator"></li>
                        @if (Route::has('register'))
                            <li>
                                <a href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li>                                                            
                            <a href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>                               
                        </li>
                    @endguest
                </ul>
            </nav>
        </header>  
        <main class="page-content">
            @yield('content')
        </main>    
        <footer>
            Restaurant CACHE - locul ideal unde sa petreceti un timp de calitate cu cei dragi!
        </footer>   
    </div>                           
</body>
</html>
