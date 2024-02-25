<head>
    <title>
      @if( isset($title) )
        {{ $title }}
      @else
        {{ config('app.site_name') }}
      @endif
    </title>
    
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', {{ config('app.gtag_id') }});
    </script>
    <!-- End Google tag (gtag.js) -->
  
    <!-- meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="email=no,telephone=no,address=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if( isset($meta) ){{ $meta }}@endif
  
    <!-- icon -->
    
  
    <!-- style -->
    @if( $layout == 'app' )
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/reset.css') }}">
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/app.css') }}">
        {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" /> --}}
        
        <link rel="stylesheet" href="{{ config('app.asset_function')('css/font-awesome.css') }}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="{{ config('app.asset_function')('js/jquery-3.6.1.min.js') }}"></script>
        <script src="{{ config('app.asset_function')('js/style.js') }}"></script>
    @endif  
    @if( isset($head) ){{ $head }}@endif
    
  </head>
  
  