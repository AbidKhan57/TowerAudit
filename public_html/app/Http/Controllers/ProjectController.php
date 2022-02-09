<?php

namespace App\Http\Controllers;

use App\customer_model;
use App\DataProjects;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class ProjectController extends Controller
{
    public function index()
    {
        if (auth()->user()->granted_user_role == 'Sys-Admin') {

            $all_projects = DataProjects::all();
            $all_customer = customer_model::all();
            return view('projects.index', ['all_projects' => $all_projects, 'all_customers'=>$all_customer]);


        }
        if (auth()->user()->granted_user_role == 'Cust-Admin') {

            $cust_value = auth()->user()->user_belongs_to_cust_id;
              $all_customer = customer_model::all();
            $all_projects = DataProjects::where('cust_id', $cust_value)->get();
            return view('projects.index', ['all_projects' => $all_projects, 'all_customers'=>$all_customer]);

        }
    }
    
        public function project_detail(Request $request){

        $project = DataProjects::find($request->id);
        return view('projects.detail',['project'=>$project]);

    }

    public function project_store(Request $request){

        $project = new DataProjects();

        $project->system_datetime_of_last_change = $request->system_datetime_of_last_change;
        $project->cust_id = $request->cust_id;
        $cust_prefix = customer_model::find($request->cust_id);
        $project->cust_name_prefix = $cust_prefix->cust_name_prefix;
        $project->app_project_name = $request->app_project_name;
        $project->project_status = $request->project_status;
        $project->app_menu_id = $request->app_menu_id;
        $project->internal_project_short_name = $request->internal_project_short_name;
        $project->internal_project_long_name = $request->internal_project_long_name;
        $project->project_planned_start = $request->project_planned_start;
        $project->project_planned_end = $request->project_planned_end;
        $project->client_project_short_name = $request->client_project_short_name;
        $project->client_project_long_name = $request->client_project_long_name;
        $project->client_project_description = $request->client_project_description;
        $project->client_company_name = $request->client_company_name;
        $project->client_contact_name = $request->client_contact_name;
        $project->client_contact_phone = $request->client_contact_phone;
        $project->client_contact_email = $request->client_contact_email;
        $project->internal_project_owner = $request->internal_project_owner;
        $project->internal_project_owner_phone = $request->internal_project_owner_phone;
        $project->internal_project_owner_email = $request->internal_project_owner_email;

        $project->save();

        return Redirect::back()->with(['success' => 'Project added successfully']);

    }

    function project_delete($id){
        $project = DataProjects::find($id);
        $project->delete();
        return Redirect::back()->with(['success' => 'Project deleted successfully']);
    }

    function project_edit(Request $request){

        $project = DataProjects::find($request->id);

        $pro_cust_id = customer_model::find($project->cust_id);
        $all_customers = customer_model::all();
        return view('projects.edit',['project'=>$project,'customer_full_name'=>$pro_cust_id->cust_name_full,'all_customers'=>$all_customers]);
    }
    function project_update(Request $request){
        $id = $request->epro_id;
        $project = DataProjects::find($id);


        $project->system_datetime_of_last_change = $request->esystem_datetime_of_last_change;
        $project->cust_id = $request->ecust_id;
        $cust_prefix = customer_model::find($request->ecust_id);
        $project->cust_name_prefix = $cust_prefix->cust_name_prefix;
        $project->app_project_name = $request->eapp_project_name;
        $project->project_status = $request->eproject_status;
        $project->app_menu_id = $request->eapp_menu_id;
        $project->internal_project_short_name = $request->einternal_project_short_name;
        $project->internal_project_long_name = $request->einternal_project_long_name;
        $project->project_planned_start = $request->eproject_planned_start;
        $project->project_planned_end = $request->eproject_planned_end;
        $project->client_project_short_name = $request->eclient_project_short_name;
        $project->client_project_long_name = $request->eclient_project_long_name;
        $project->client_project_description = $request->eclient_project_description;
        $project->client_company_name = $request->eclient_company_name;
        $project->client_contact_name = $request->eclient_contact_name;
        $project->client_contact_phone = $request->eclient_contact_phone;
        $project->client_contact_email = $request->eclient_contact_email;
        $project->internal_project_owner = $request->einternal_project_owner;
        $project->internal_project_owner_phone = $request->einternal_project_owner_phone;
        $project->internal_project_owner_email = $request->einternal_project_owner_email;

        $project->save();

        return Redirect::back()->with(['success' => 'Project update successfully']);

    }
}
