<!-- audit_company >> audit_company_edit.blade.php   -->
<div class="card-datatable table-responsive" style="padding: 20px">
    <form action="{{route('audit_company_update')}}" method="post" id="audit_company_edit_form" style="border: 1px solid grey;padding: 20px;border-radius: 20px">
        @csrf

        <input type="hidden"  name="id" value="{{$audit_company->id}}">
            <div class="row">
                <div class="col">
                    <label>Allocated to Customer</label>
                    <input type="text" name="ecust_id" class="form-control" value="{{$audit_company->cust_id}}">
                </div>
                <div class="col">
                    <label>Allocated to Project</label>
                    <input type="text" name="eassigned_to_project_id" class="form-control" value="{{$audit_company->assigned_to_project_id}}">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label>Audit Company name prefix</label>
                    <input type="text" name="esupplier_name_prefix" class="form-control" value="{{$audit_company->supplier_name_prefix}}">
                </div>
                <div class="col">
                    <label>Audit Company Full name</label>
                    <input type="text" name="esupplier_name_full" class="form-control" value="{{$audit_company->supplier_name_full}}">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Address Region</label>
                    <input type="text" name="eaddress_region" class="form-control" value="{{$audit_company->address_region}}">
                </div>
                <div class="col">
                    <label>Address Country</label>
                    <input type="text" name="eaddress_country" class="form-control" value="{{$audit_company->address_country}}">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Address Zip</label>
                    <input type="text" name="eaddress_zip" class="form-control" value="{{$audit_company->address_zip}}">
                </div>
                <div class="col">
                    <label>Address Area</label>
                    <input type="text" name="eaddress_area" class="form-control" value="{{$audit_company->address_area}}">
                </div>
            </div>
            <div class="row">
                    <div class="col">
                        <label>Address City</label>
                        <input type="text" name="eaddress_city" class="form-control" value="{{$audit_company->address_city}}">
                    </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Address 1</label>
                    <input type="text" name="eaddress_1" class="form-control" value="{{$audit_company->address_1}}">
                </div>
                <div class="col">
                    <label>Address 2</label>
                    <input type="text" name="eaddress_2" class="form-control" value="{{$audit_company->address_2}}">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Address 3</label>
                    <input type="text" name="eaddress_3" class="form-control" value="{{$audit_company->address_3}}">
                </div>
                <div class="col">
                    <label>Phone Number</label>
                    <input type="text" name="ephone_main" class="form-control" value="{{$audit_company->phone_main}}">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Contact Name</label>
                    <input type="text" name="econtact_name" class="form-control" value="{{$audit_company->contact_name}}">
                </div>
                <div class="col">
                    <label>Contact Position</label>
                    <input type="text" name="econtact_position" class="form-control" value="{{$audit_company->contact_position}}">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label>Contact Mobile</label>
                    <input type="text" name="econtact_mobile" class="form-control" value="{{$audit_company->contact_mobile}}">
                </div>
                <div class="col">
                    <label>Contact Email</label>
                    <input type="text" name="econtact_email" class="form-control" value="{{$audit_company->contact_email}}">
                </div>
            </div>



        </form>

</div>

