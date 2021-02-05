<?php

use Illuminate\Http\Request;

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
