<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    
    @livewire(
      'common-head',
      [
        'layout'=>'app',
        'title'=>$title ?? null,
        'head'=>$head ?? null,
        'meta'=>$meta ?? null,
      ]
    )
    @livewire('common-header',  [
        'layout'=>'app',
        'title'=>$title ?? null,
      ]
    )
      
    {{ $slot }}



   
  
  @livewire('common-footer',  [
      'layout'=>'app',
      'title'=>$title ?? null,
    ]
  )
    @livewireScripts
</html>
