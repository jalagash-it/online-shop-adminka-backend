<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
 */
$router->get('/console/run', function (Request $request) use ($router) {
    Artisan::call('migrate');
});

$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->post('/auth/login', 'AuthController@login');

$router->post('/auth/current', ["middleware" => "auth", function (Request $request) {
    return $request->user;
}]);

$router->post('/auth/logout', ["middleware" => "auth", 'uses' => 'AuthController@logout']);

$router->get('/categories', 'CategoryController@all');
$router->get('/categories/{id}', 'CategoryController@byId');
$router->post('/categories', 'CategoryController@create');
$router->put('/categories/{id}', 'CategoryController@update');
$router->delete('/categories/{id}', 'CategoryController@remove');

$router->get('/products', 'ProductController@all');
$router->get('/products/{id}', 'ProductController@byId');
$router->post('/products', 'ProductController@create');
$router->post('/products/{id}/addPhoto', 'ProductController@addPhoto');
$router->post('/products/{id}/removePhoto', 'ProductController@removePhoto');
$router->put('/products/{id}', 'ProductController@update');
$router->delete('/products/{id}', 'ProductController@remove');
