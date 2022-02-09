<?php

namespace App\Http\Controllers;

// <!-- app >> http >> Controllers >> ProjectTeamController.php   -->

use App\project_team_model;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class ProjectTeamController extends Controller
{
    public function index(){
        if(auth()->user()->granted_user_role == 'Sys-Admin'){

            $all_project_team = project_team_model::all();
            return view('project_teams.project_team',['all_project_team'=>$all_project_team]);

        }
        if(auth()->user()->granted_user_role == 'Cust-Admin'){
            $cust_value = auth()->user()->user_belongs_to_cust_id;
            $all_project_team = project_team_model::where('belongs_to_cust_id', $cust_value)->get();
            return view('project_teams.project_team', ['all_project_team'=>$all_project_team]);
        }

        if(auth()->user()->granted_user_role == 'Cust-PM'){
            $cust_value = auth()->user()->user_belongs_to_cust_id;
            $all_project_team = project_team_model::where('belongs_to_cust_id', $cust_value)->get();
            return view('project_teams.project_team', ['all_project_team'=>$all_project_team]);
        }

    }

            public function project_team_detail(Request $request){

            $project_team = project_team_model::find($request->id);
            return view('project_teams.project_team_detail',['project_team'=>$project_team]);
            }


    public function project_team_add(Request $request){
        $project_team = new project_team_model();

        $project_team->belongs_to_cust_id = $request->belongs_to_cust_id;
        $project_team->project_table_ref_id = $request->project_table_ref_id;
        $project_team->internal_project_team_name = $request->internal_project_team_name;
        $project_team->pm_name = $request->pm_name;
        $project_team->pm_mobile = $request->pm_mobile;
        $project_team->pm_email = $request->pm_email;
        $project_team->senior_engineer_name = $request->senior_engineer_name;
        $project_team->senior_engineer_mobile = $request->senior_engineer_mobile;
        $project_team->senior_engineer_email = $request->senior_engineer_email;
        $project_team->engineer_name = $request->engineer_name;
        $project_team->engineer_mobile = $request->engineer_mobile;
        $project_team->engineer_email = $request->engineer_email;
        $project_team->data_reviewer_name = $request->data_reviewer_name;
        $project_team->data_reviewer_mobile = $request->data_reviewer_mobile;
        $project_team->data_reviewer_email = $request->data_reviewer_email;

        $project_team->save();

        return Redirect::back()->with(['success' => 'Project Team added successfully']);
    }

    function project_team_edit(Request $request){
        $project_team = project_team_model::find($request->id);
        return view('project_teams.project_team_edit',['project_team'=>$project_team]);
    }

    function project_team_delete($id){
        $project_team= project_team_model::find($id);
        $project_team->delete();
        return Redirect::back()->with(['success' => 'Project Team deleted successfully']);
    }

    function project_team_update(Request $request){
        $id = $request->id;
        $project_team = project_team_model::find($id);

        $project_team->belongs_to_cust_id = $request->ebelongs_to_cust_id;
        $project_team->project_table_ref_id = $request->eproject_table_ref_id;
        $project_team->internal_project_team_name = $request->einternal_project_team_name;
        $project_team->pm_name = $request->epm_name;
        $project_team->pm_mobile = $request->epm_mobile;
        $project_team->pm_email = $request->epm_email;
        $project_team->senior_engineer_name = $request->esenior_engineer_name;
        $project_team->senior_engineer_mobile = $request->esenior_engineer_mobile;
        $project_team->senior_engineer_email = $request->esenior_engineer_email;
        $project_team->engineer_name = $request->eengineer_name;
        $project_team->engineer_mobile = $request->eengineer_mobile;
        $project_team->engineer_email = $request->eengineer_email;
        $project_team->data_reviewer_name = $request->edata_reviewer_name;
        $project_team->data_reviewer_mobile = $request->edata_reviewer_mobile;
        $project_team->data_reviewer_email = $request->edata_reviewer_email;

        $project_team->save();

        return Redirect::back()->with(['success' => 'Project Team update successfully']);

    }




}
