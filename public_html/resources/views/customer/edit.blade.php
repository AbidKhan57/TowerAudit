<!-- CUSTOMER >> edit.blade.php   -->
<div class="card-datatable table-responsive" style="padding: 20px">
    <form action="{{route('update_customer')}}" method="post" id="customer_edit_form" style="border: 1px solid grey;padding: 20px;border-radius: 20px">
        @csrf
<!--        <input type="hidden"  name="ecust_belongs_to" value="{{$customer->cust_belongs_to}}">      -->
        <input type="hidden"  name="ecust_id" value="{{$customer->id}}">
        <div class="row">
            <div class="col">
                <label>Customer Type</label>
                <select class="form-control" id="exampleFormControlSelect1" name="ecust_type">
                    <option value="{{$customer->cust_type}}" selected>{{$customer->cust_type}}</option>
                    <option value="direct">direct</option>
                    <option value="direct_via_reseller">direct_via_reseller</option>
                    <option value="partner">partner</option>
                    <option value="partner_cust">partner_cust</option>
                    <option value="admin">admin</option>
                </select>
            </div>
            <div class="col">
                <label>Customer name prefix</label>
                <input type="text" name="ecust_name_prefix" class="form-control" value="{{$customer->cust_name_prefix}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Customer Full name</label>
                <input type="text" name="ecust_name_full" class="form-control" value="{{$customer->cust_name_full}}">
            </div>
            <div class="col">
                <label>Belongs to Customer</label>
                <input type="text" name="ecust_belongs_to" class="form-control" value="{{$customer->cust_belongs_to}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Customer Status</label>
                <select class="form-control" id="exampleFormControlSelect1" name="ecust_status">
                    <option value="{{$customer->cust_status}}" selected>{{$customer->cust_status}}</option>
                    <option value="active">active</option>
                    <option value="archived">archived</option>
                    <option value="deleted">deleted</option>
                    <option value="pending">pending</option>
                    <option value="suspended">suspended</option>
                </select>
            </div>
            <div class="col">
                <label>Address Region</label>
                <input type="text" name="eaddress_region" class="form-control" value="{{$customer->address_region}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Address Country</label>
                <input type="text" name="eaddress_country" class="form-control" value="{{$customer->address_region}}">
            </div>
            <div class="col">
                <label>Address Zip</label>
                <input type="text" name="eaddress_zip" class="form-control" value="{{$customer->address_zip}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Address Area</label>
                <input type="text" name="eaddress_area" class="form-control" value="{{$customer->address_area}}">
            </div>
            <div class="col">
                <label>Address City</label>
                <input type="text" name="eaddress_city" class="form-control" value="{{$customer->address_city}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Address 1</label>
                <input type="text" name="eaddress_1" class="form-control" value="{{$customer->address_1}}">
            </div>
            <div class="col">
                <label>Address 2</label>
                <input type="text" name="eaddress_2" class="form-control" value="{{$customer->address_2}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Address 3</label>
                <input type="text" name="eaddress_3" class="form-control" value="{{$customer->address_3}}">
            </div>
            <div class="col">
                <label>Phone Number</label>
                <input type="text" name="ephone_main" class="form-control" value="{{$customer->phone_main}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Contact Name</label>
                <input type="text" name="econtact_name" class="form-control" value="{{$customer->contact_name}}">
            </div>
            <div class="col">
                <label>Contact Position</label>
                <input type="text" name="econtact_position" class="form-control" value="{{$customer->contact_name}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Contact Mobile</label>
                <input type="text" name="econtact_mobile" class="form-control" value="{{$customer->contact_mobile}}">
            </div>
            <div class="col">
                <label>Contact Email</label>
                <input type="text" name="econtact_email" class="form-control" value="{{$customer->contact_email}}">
            </div>
        </div>
    </form>

</div>

