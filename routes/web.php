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

Route::get('/', function () {
    return view('welcome');
});



/*==============================================   Dashboard Routes    ====================================================*/

Route::group(['middleware' => 'auth' ,'namespace' => 'Dashboard'], function () {


    /* -- Return Home Page -- */
    Route::get('/3elajiAdmin', 'DashboardController@index');

    /* -- Return Slider Page -- */
    Route::resource('/3elajiAdmin/slider', 'SliderController');

    /* -- Return Message Page -- */
    Route::resource('/3elajiAdmin/message', 'MessageController');

    /*--------  About   --------*/
    Route::get('/3elajiAdmin/about/edit', 'AboutController@edit');
    Route::patch('/3elajiAdmin/about/update', 'AboutController@update');

    /*--------  Blog   --------*/
    Route::resource('/3elajiAdmin/blog', 'BlogController');

    /*--------  Clinic   --------*/
    Route::resource('/3elajiAdmin/clinic', 'ClinicController');
    Route::get('/3elajiAdmin/clinic/clinic-images/{id}', 'ClinicController@clinicImages');
    Route::delete('/3elajiAdmin/clinic/clinic-images/delete/{id}', 'ClinicController@deleteClinicImage');


    /*--------  Seo   --------*/
    /*--------  website Main Pages   --------*/
    Route::get('/3elajiAdmin/seo/website-pages', 'SeoController@websitePages');
    Route::get('/3elajiAdmin/seo/website-page/edit/{id}', 'SeoController@editWebsitePage');
    Route::patch('/3elajiAdmin/seo/website-page/edit/{id}', 'SeoController@updateWebsitePage');
    /*--------  website Open Graphs   --------*/
    Route::get('/3elajiAdmin/seo/open-graph', 'SeoController@openGraph'); /*--------  edit main pages open graph   --------*/
    Route::get('/3elajiAdmin/seo/main-pages-open-graph/edit/{id}', 'SeoController@editMainPageOpenGraph');
    Route::patch('/3elajiAdmin/seo/main-pages-open-graph/edit/{id}', 'SeoController@updateMainPageOpenGraph');
    /*--------  clinics pages open graph   --------*/
    Route::get('/3elajiAdmin/seo/clinics-pages-open-graph/edit/{id}', 'SeoController@editClinicsPagesOpenGraph');
    /*--------  articles pages open graph   --------*/
    Route::get('/3elajiAdmin/seo/articles-pages-open-graph/edit/{id}', 'SeoController@editArticlesPagesOpenGraph');
    /*--------  clinics pages open graph   --------*/
    Route::get('/3elajiAdmin/seo/edit-open-graph/{id}', 'SeoController@editOpenGraph');
    /*--------  website Main Pages   --------*/
    /*-------- sameAs   --------*/
    Route::get('/3elajiAdmin/seo/same-as', 'SeoController@sameAs');
    Route::get('/3elajiAdmin/seo/create-same-as', 'SeoController@createSameAs');
    Route::post('/3elajiAdmin/seo/create-same-as/create', 'SeoController@storeSameAs');
    Route::get('/3elajiAdmin/seo/edit-same-as/edit/{id}', 'SeoController@editSameAs');
    Route::patch('/3elajiAdmin/seo/edit-same-as/edit/{id}', 'SeoController@updateSameAs');
    Route::delete('/3elajiAdmin/seo/delete-same-as/{id}', 'SeoController@deleteSameAs');
    /*-------- Forms   --------*/
    Route::get('/3elajiAdmin/seo/form', 'SeoController@form');
    Route::get('/3elajiAdmin/seo/form/edit/{id}', 'SeoController@editForm');
    Route::patch('/3elajiAdmin/seo/form/edit/{id}', 'SeoController@updateForm');


    /*--------  Specialist   --------*/
    Route::resource('/3elajiAdmin/specialist', 'SpecialistController');


    /*--------  Contact   --------*/
    Route::get('/3elajiAdmin/contact/edit', 'ContactController@edit');
    Route::patch('/3elajiAdmin/contact/update', 'ContactController@update');


    /*--------  Setting   --------*/
    Route::get('/3elajiAdmin/setting/edit', 'SettingController@edit');
    Route::patch('/3elajiAdmin/setting/update', 'SettingController@update');

});




/*=======   Return Home     ========*/
Route::get('/', 'WebsitePagesController@index');

/*=======   Return about    ========*/
Route::get('/about', 'WebsitePagesController@about');

/*=======   Return Blog    ========*/
Route::get('/blog', 'WebsitePagesController@blog');
Route::get('/blog/{url}', 'WebsitePagesController@blogDetails');


/*=======   Return Contact     ========*/
Route::get('/contact', 'WebsitePagesController@contact');
Route::post('message', 'WebsitePagesController@message');


/*=======   Return Doctors     ========*/
Route::get('/doctors', 'WebsitePagesController@doctors');
Route::get('doctors/{doctorSpeciality}/{url}', 'WebsitePagesController@doctorDetails');

/*=======   Return Centers     ========*/
Route::get('/centers', 'WebsitePagesController@centers');
Route::get('/centers/{speciality}/{url}', 'WebsitePagesController@centerDetails');

/*=======   Return Radiology Centers     ========*/
Route::get('/radiology', 'WebsitePagesController@radiology');
Route::get('/radiology/{speciality}/{url}', 'WebsitePagesController@radiologyDetails');

/*=======   Return Labs     ========*/
Route::get('/labs', 'WebsitePagesController@labs');
Route::get('/labs/{url}', 'WebsitePagesController@labDetails');







Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
