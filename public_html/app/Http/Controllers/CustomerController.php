<?php

namespace App\Http\Controllers;

// <!-- app >> http >> Controllers >> Customer.php   -->

use App\customer_model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CustomerController extends Controller
{
    public function index(){
        if(auth()->user()->granted_user_role == 'Sys-Admin'){

            $all_customers = customer_model::all();
            return view('customer.index',['all_customers'=>$all_customers]);

        }
        if(auth()->user()->granted_user_role == 'Cust-Admin'){
            $cust_value = auth()->user()->user_belongs_to_cust_id;
            $all_customers = customer_model::where('cust_belongs_to',$cust_value)->get();
            return view('customer.index',['all_customers'=>$all_customers]);

        }


    }
    
            public function customer_detail(Request $request){

            $customer = customer_model::find($request->id);
            return view('customer.detail',['customer'=>$customer]);

        }

        public function customer_store(Request $request){
            $customer = new customer_model();

            $customer->cust_type = $request->cust_type;
            $customer->cust_belongs_to = $request->cust_belongs_to;
            $customer->cust_status = $request->cust_status;
            $customer->cust_name_prefix = $request->cust_name_prefix;
            $customer->cust_name_full = $request->cust_name_full;
            $customer->address_region = $request->address_region;
            $customer->address_country = $request->address_country;
            $customer->address_zip = $request->address_zip;
            $customer->address_area = $request->address_area;
            $customer->address_city = $request->address_city;
            $customer->address_1 = $request->address_1;
            $customer->address_2 = $request->address_2;
            $customer->address_3 = $request->address_3;
            $customer->phone_main = $request->phone_main;
            $customer->contact_name = $request->contact_name;
            $customer->contact_position = $request->contact_position;
            $customer->contact_mobile = $request->contact_mobile;
            $customer->contact_email = $request->contact_email;

            $customer->save();

            return Redirect::back()->with(['success' => 'Customer added successfully']);

        }

        function customer_delete($id){
            $customer= customer_model::find($id);
            $customer->delete();
            return Redirect::back()->with(['success' => 'Customer deleted successfully']);
        }

        function customer_edit(Request $request){

            $customer = customer_model::find($request->id);

            return view('customer.edit',['customer'=>$customer]);
        }


        function customer_update(Request $request){
            $id = $request->ecust_id;
            $customer = customer_model::find($id);

            $customer->cust_type = $request->ecust_type;
            $customer->cust_status = $request->ecust_status;
            $customer->cust_belongs_to = $request->ecust_belongs_to;
            $customer->cust_name_prefix = $request->ecust_name_prefix;
            $customer->cust_name_full = $request->ecust_name_full;
            $customer->address_region = $request->eaddress_region;
            $customer->address_country = $request->eaddress_country;
            $customer->address_zip = $request->eaddress_zip;
            $customer->address_area = $request->eaddress_area;
            $customer->address_city = $request->eaddress_city;
            $customer->address_1 = $request->eaddress_1;
            $customer->address_2 = $request->eaddress_2;
            $customer->address_3 = $request->eaddress_3;
            $customer->phone_main = $request->ephone_main;
            $customer->contact_name = $request->econtact_name;
            $customer->contact_position = $request->econtact_position;
            $customer->contact_mobile = $request->econtact_mobile;
            $customer->contact_email = $request->econtact_email;

            $customer->save();

            return Redirect::back()->with(['success' => 'Customer update successfully']);

        }


}
