<?php

namespace App\Http\Controllers;

// <!-- app >> http >> Controllers >> AuditCompanyController.php   -->

use App\PortalAuditCompany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;

class AuditCompanyController extends Controller
{
    public function index()
    {
        if (auth()->user()->granted_user_role == 'Sys-Admin') {

            $all_audit_company = PortalAuditCompany::all();
           // $all_audit_company = DB::table('portal_audit_company_table')
            //->select('portal_audit_company_table', 'portal_audit_company_table.cust_id as cust_id', 'portal_audit_company_table.supplier_name_prefix as supplier_name_prefix', 'portal_audit_company_table.supplier_name_full as supplier_name_full', 'portal_audit_company_table.address_area as address_area', 'data_projects.app_project_name as app_project_name', 'data_projects.project_status as project_status', 'data_projects.cust_name_prefix as cust_name_prefix', 'data_projects.internal_project_short_name as internal_project_short_name')
            //->Join('data_projects', 'portal_audit_company_table.id_project', '=', 'data_projects.id_project')
            //->get();
            return view('audit_company.audit_company', ['all_audit_company' => $all_audit_company]);
        }
        if (auth()->user()->granted_user_role == 'Cust-Admin') {
            $cust_value = auth()->user()->user_belongs_to_cust_id;
            $all_audit_company = PortalAuditCompany::where('cust_id', $cust_value)->get();
            return view('audit_company.audit_company', ['all_audit_company' => $all_audit_company]);
        }
    }

    public function audit_company_detail(Request $request)
    {

        $audit_company = PortalAuditCompany::find($request->id);
        return view('audit_company.audit_company_detail', ['audit_company' => $audit_company]);
    }


    public function audit_company_add(Request $request)
    {
        $audit_company = new PortalAuditCompany();

        $audit_company->cust_id = $request->cust_id;
        $audit_company->assigned_to_project_id = $request->assigned_to_project_id;
        $audit_company->supplier_name_prefix = $request->supplier_name_prefix;
        $audit_company->supplier_name_full = $request->supplier_name_full;
        $audit_company->address_region = $request->address_region;
        $audit_company->address_country = $request->address_country;
        $audit_company->address_zip = $request->address_zip;
        $audit_company->address_area = $request->address_area;
        $audit_company->address_city = $request->address_city;
        $audit_company->address_1 = $request->address_1;
        $audit_company->address_2 = $request->address_2;
        $audit_company->address_3 = $request->address_3;
        $audit_company->phone_main = $request->phone_main;
        $audit_company->contact_name = $request->contact_name;
        $audit_company->contact_position = $request->contact_position;
        $audit_company->contact_mobile = $request->contact_mobile;
        $audit_company->contact_email = $request->contact_email;


        $audit_company->save();

        return Redirect::back()->with(['success' => 'Audit Company added successfully']);
    }

    function audit_company_edit(Request $request)
    {
        $audit_company = PortalAuditCompany::find($request->id);
        return view('audit_company.audit_company_edit', ['audit_company' => $audit_company]);
    }

    function audit_company_delete($id)
    {
        $audit_company = PortalAuditCompany::find($id);
        $audit_company->delete();
        return Redirect::back()->with(['success' => 'Audit Company deleted successfully']);
    }

    function audit_company_update(Request $request)
    {
        $id = $request->id;
        $audit_company = PortalAuditCompany::find($id);

        $audit_company->cust_id = $request->ecust_id;
        $audit_company->assigned_to_project_id = $request->eassigned_to_project_id;
        $audit_company->supplier_name_prefix = $request->esupplier_name_prefix;
        $audit_company->supplier_name_full = $request->esupplier_name_full;
        $audit_company->address_region = $request->eaddress_region;
        $audit_company->address_country = $request->eaddress_country;
        $audit_company->address_zip = $request->eaddress_zip;
        $audit_company->address_area = $request->eaddress_area;
        $audit_company->address_city = $request->eaddress_city;
        $audit_company->address_1 = $request->eaddress_1;
        $audit_company->address_2 = $request->eaddress_2;
        $audit_company->address_3 = $request->eaddress_3;
        $audit_company->phone_main = $request->ephone_main;
        $audit_company->contact_name = $request->econtact_name;
        $audit_company->contact_position = $request->econtact_position;
        $audit_company->contact_mobile = $request->econtact_mobile;
        $audit_company->contact_email = $request->econtact_email;

        $audit_company->save();

        return Redirect::back()->with(['success' => 'Audit Company update successfully']);
    }
}
