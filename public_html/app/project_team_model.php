<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class project_team_model extends Model
{
    protected $table = "portal_project_team_table";

    protected $fillable = ['belongs_to_cust_id','project_table_ref_id','internal_project_team_name','pm_name',
        'pm_mobile','pm_email','engineer_name','engineer_mobile','engineer_email','senior_engineer_name',
        'senior_engineer_mobile','senior_engineer_email','data_reviewer_name','data_reviewer_mobile','data_reviewer_email'];
}
