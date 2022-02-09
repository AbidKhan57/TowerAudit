<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PortalAuditCompany extends Model
{
    protected $table = "portal_audit_company_table";

    protected $fillable = [
        'cust_id', 'id_project', 'supplier_name_prefix', 'supplier_name_full',
        'address_region', 'address_country', 'address_zip', 'address_area', 'address_city',
        'address_1', 'address_2', 'address_3', 'phone_main', 'contact_name', 'contact_position', 'contact_mobile',
        'contact_email'
    ];

    public function data_project()
    {
        return $this->hasMany(DataProjects::class);
    }
}
