<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    
    public function system_admin_sub(){
        $configured_customers = DB::table('portal_customer_table')->count();
        $configured_projects = DB::table('data_projects')->count();
        $active_projects = DB::table('data_projects')->where('project_status','Started')->count();
        $audit_companies = DB::table('portal_audit_company_table')->count();
        $audit_engineers = DB::table('0-1-engineer_details')->count();

        $data = [
            'configured_customer' => $configured_customers,
            'configured_projects' => $configured_projects,
            'active_projects' => $active_projects,
            'audit_companies' => $audit_companies,
            'audit_engineers' => $audit_engineers
            ];
        return view('system_admin.sys_admin_sub',['data' => $data]);
    }

/**    public function audit_company()
        {
            return view('audit_company.audit_company');
        }
*/

    public function project_management()
        {
            return view('pm.project_management');
        }
 

    public function sites()
        {
            return view('sites.sites');
        }


    public function modules()
        {
            return view('modules.modules');
        }


    
    public function test(){
        dd('working');
    }
}
