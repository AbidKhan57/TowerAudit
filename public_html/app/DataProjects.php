<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataProjects extends Model
{
    
    protected $table = 'data_projects';
    protected $primaryKey = 'id_project';
    protected $fillable = [
        'system_datetime_of_last_change', 'app_project_name', 'project_status', 'app_menu_id',
        'cust_id', 'cust_name_prefix', 'internal_project_short_name', 'internal_project_long_name', 'project_planned_start',
        'project_planned_end', 'client_project_short_name', 'client_project_long_name', 'client_project_description',
        'client_company_name', 'client_contact_name', 'client_contact_phone', 'client_contact_email', 'internal_project_owner',
        'internal_project_owner_phone', 'internal_project_owner_email'
    ];
}
