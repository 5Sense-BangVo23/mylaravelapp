<?php

namespace App\Services;

use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\URL;

class RouteService
{

    public function getAllWebRoutes()
    {
        $routes = [];

        foreach (Route::getRoutes() as $route) {
            if ($route->getName()) {
            
                $routes[] = [
                    'uri' => $route->uri(),
                    'name' => $route->getName(),
                    'action' => $route->getActionName(),
                ];
            }
        }

        return $routes;
    }

    public function current(){
        return Route::current();
    }

    public function getCurrentPageInfo()
    {
        $currentUrl = URL::full();
        $currentPage = Request::path();

        return [
            'full_url' => $currentUrl,
            'current_page' => $currentPage,
        ];
    }
}
