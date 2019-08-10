<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>علاجي -    @yield('title')</title>


    <meta name="description" content="Test your website with the free SEO check from Seobility and get tips for a better search engine optimization.">
    <!-- open graph meta-->
    <meta property="og:title" content="The Rock"/>
    <meta property="og:type" content="video.movie"/>
    <meta property="og:url" content="http://www.imdb.com/title/tt0117500/"/>
    <meta property="og:image" content="http://ia.media-imdb.com/images/rock.jpg"/>
    <meta property="og:description" content="The Rock"/>
    <meta property="og:site_name" content="The Rock"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('website/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/jquery-ui.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/linearicons.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/ionicons.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/featherIcons.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/swiper.min.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/fotorama.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/lightgallery.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/aos.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/hamburgers.css')}}">
    <link rel="stylesheet" href="{{asset('website/css/index.css')}}">
    <link rel="shortcut icon" href="{{asset('website/images/favicon.png')}}" type="image/png" sizes="16x16 32x32">
    <!-- canonical links-->
    <link rel="canonical" href="http://www.example.com/product.html"/>
    <!-- end canonical links-->
    <title>3elaji</title>
    <!--Define social media profiles with schema.org markup -->
    <script type="application/ld+json">
	{
	  "@context" : "http://schema.org",
	  "@type" : "Organization",
	  "name" : "Vanhoutte Inc.",
	  "url" : "http://vanhoutte.be",
	  "sameAs" : [
		"https://www.facebook.com/your-profile",
		"https://twitter.com/yourProfile",
		"https://plus.google.com/your_profile"
	  ]
	}

    </script>
    <!-- end social-->
    <!-- Bootstrap Min CSS -->
    <!-- Fonts and icons -->
    @yield('customizedStyle')





</head>







<body class="hold-transition skin-blue sidebar-mini">
<div id="app">
    <main>
        <!-- Define social media profiles with schema.org markup -->
        <span itemscope itemtype="http://schema.org/3alajy">
            <link itemprop="url" href="https://vanhoutte.be">
            <a itemprop="sameAs" href="https://www.facebook.com/your-company">FB</a>
            <a itemprop="sameAs" href="https://www.twitter.com/YourCompany">Twitter</a>
            <a itemprop="sameAs" href="https://www.facebook.com/your-company">linked in</a>
            <a itemprop="sameAs" href="https://www.twitter.com/YourCompany">youtube</a>
            <a itemprop="sameAs" href="https://www.facebook.com/your-company">twitter</a>
            <a itemprop="sameAs" href="https://www.twitter.com/YourCompany">Twitter</a>
        </span>
        <!-- end -->

       {{-- <div class="loading-div">
            <img src="{{asset('website/images/icons/loading.gif')}}" alt="img">
        </div>--}}

        @include('website.layouts.header')

        @yield('content')

        @include('website.layouts.footer')
    </main>
</div>






{{--<!-- Scripts -->
<script src="{{ asset('js/app.js') }}" defer></script>--}}
<!-- JS
============================================ -->

<script src="{{asset('website/js/jquery-3.4.1.min.js')}}"></script>
<script src="{{asset('website/js/bootstrap.min.js')}}"></script>
<script src="{{asset('website/js/popper.min.js')}}"></script>
<script src="{{asset('website/js/jquery.counterup.js')}}"></script>
<script src="{{asset('website/js/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('website/js/jquery-ui.min.js')}}"></script>
<script src="{{asset('website/js/swiper.min.js')}}"></script>
<script src="{{asset('website/js/slick.min.js')}}"></script>
<script src="{{asset('website/js/aos.js')}}"></script>
<script src="{{asset('website/js/fotorama.js')}}"></script>
<script src="{{asset('website/js/lightgallery.js')}}"></script>
<script src="{{asset('website/js/lg-thumbnail.js')}}"></script>
<script src="{{asset('website/js/index.js')}}"></script>

@yield('customizedScript')

</body>
</html>
