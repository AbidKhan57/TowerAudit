<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customer_model extends Model
{
    protected $table = "portal_customer_table";

    protected $fillable = ['cust_type','cust_status','cust_id ','cust_belongs_to','cust_name_prefix ','cust_name_full',
        'address_region','address_country','address_zip','address_area','address_city',
        'address_1','address_2','address_3','phone_main','contact_name','contact_position','contact_mobile',
        'contact_email'];
}
