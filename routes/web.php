<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Http\Controllers\BlogController;
use Illuminate\Routing\RouteGroup;

Auth::routes();

Route::get('/', 'BlogController@index');


Route::get('/isi-post/{slug}', 'BlogController@isi_blog')->name('blog.isi');
Route::get('/list-post', 'BlogController@list_post');
Route::get('/list-category/{category}', 'BlogController@list_category')->name('blog.category');
Route::get('/cari', 'BlogController@cari')->name('blog.cari');


Route::group(['middleware' => 'auth'], function () {

    Route::get('/home', 'HomeController@index')->name('home');
    Route::resource('/category', 'CategoryController');
    Route::resource('/tag', 'Tag');
    Route::get('/post/tampil_hapus', 'PostController@tampil_hapus')->name('post.tampi_hapus');
    Route::get('/post/restore/{post}', 'PostController@restore');
    Route::delete('/post/kill/{post}', 'PostController@kill');
    Route::resource('/post', 'PostController');
    Route::resource('/user', 'UserController');
});
