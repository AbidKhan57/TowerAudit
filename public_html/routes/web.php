<?php

use Illuminate\Support\Facades\Route;

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
    return view('landing');
});

Route::get('/clear',function(){
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:cache');
});


Route::middleware(['auth'])->group(function () {
    Route::get('/approval', 'ApprovalController@approval')->name('approval');

    Route::middleware(['approved'])->group(function () {
        Route::get('/admin/pm', 'HomeController@project_management')->name('project_management');
        Route::get('/admin/sites', 'HomeController@sites')->name('sites');
        Route::get('/admin/modules', 'HomeController@modules')->name('modules');

        Route::get('/admin/pm/project_team', 'ProjectTeamController@index')->name('project_team');
        Route::post('/admin/pm/project_team_add', 'ProjectTeamController@project_team_add')->name('project_team_add');
        Route::post('/admin/pm/project_team_edit', 'ProjectTeamController@project_team_edit')->name('project_team_edit');
        Route::post('/admin/pm/project_team_detail', 'ProjectTeamController@project_team_detail')->name('project_team_detail');
        Route::post('/admin/pm/project_team_update', 'ProjectTeamController@project_team_update')->name('project_team_update');
        Route::get('/admin/pm/project_team_delete/{id}', 'ProjectTeamController@project_team_delete');

        Route::get('/admin/audit_company', 'AuditCompanyController@index')->name('audit_company');
        Route::post('/admin/audit_company_add', 'AuditCompanyController@audit_company_add')->name('audit_company_add');
        Route::post('/admin/audit_company_edit', 'AuditCompanyController@audit_company_edit')->name('audit_company_edit');
        Route::post('/admin/audit_company_detail', 'AuditCompanyController@audit_company_detail')->name('audit_company_detail');
        Route::post('/admin/audit_company_update', 'AuditCompanyController@audit_company_update')->name('audit_company_update');
        Route::get('/admin/audit_company_delete/{id}', 'AuditCompanyController@audit_company_delete');


        Route::get('/home', 'HomeController@index')->name('home');
        Route::get('/system_admin_sub', 'HomeController@system_admin_sub')->name('system_admin_sub');

        Route::get('/admin/customer_index', 'CustomerController@index')->name('customer_index');
        Route::post('/admin/customer_detail', 'CustomerController@customer_detail')->name('customer_detail');
        Route::post('/admin/customer_edit', 'CustomerController@customer_edit')->name('customer_edit');
        Route::post('/admin/customer_update', 'CustomerController@customer_update')->name('update_customer');
        Route::post('/admin/customer_store', 'CustomerController@customer_store')->name('store_customer');
        Route::get('/admin/customer_delete/{id}', 'CustomerController@customer_delete');

        Route::get('/admin/project_index', 'ProjectController@index');
        Route::post('/admin/project_detail', 'ProjectController@project_detail')->name('project_detail');
        Route::post('/admin/project_edit', 'ProjectController@project_edit')->name('project_edit');
        Route::post('/admin/project_update', 'ProjectController@project_update')->name('project_update');
        Route::post('/admin/project_store', 'ProjectController@project_store')->name('project_store');
        Route::get('/admin/project_delete/{id}', 'ProjectController@project_delete');

        Route::get('/test', 'HomeController@test');
    });
});

Auth::routes();
