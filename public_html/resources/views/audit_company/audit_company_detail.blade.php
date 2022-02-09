<div class="card-datatable table-responsive">
	<table id="audit_company_details" class="datatables-demo table table-striped table-bordered">
		<tbody>

        <tr>
            <td>Assigned to Customer ID</td>
            <td>{{$audit_company->cust_id}}</td>
        </tr>

        <tr>
            <td>Assigned to Project ID</td>
            <td>{{$audit_company->assigned_to_project_id}}</td>
        </tr>

        <tr>
            <td>Company Name Prefix</td>
            <td>{{$audit_company->supplier_name_prefix}}</td>
        </tr>

        <tr>
            <td>Company Full Name</td>
            <td>{{$audit_company->supplier_name_full}}</td>
        </tr>
        <tr>
            <td>Address Region</td>
            <td>{{$audit_company->address_region}}</td>
        </tr>

        <tr>
            <td>Address Country</td>
            <td>{{$audit_company->address_country}}</td>
        </tr>

        <tr>
            <td>Address Zip</td>
            <td>{{$audit_company->address_zip}}</td>
        </tr>

        <tr>
            <td>Address Area</td>
            <td>{{$audit_company->address_area}}</td>
        </tr>

        <tr>
            <td>Address City</td>
            <td>{{$audit_company->address_city}}</td>
        </tr>

        <tr>
            <td>Address 1</td>
            <td>{{$audit_company->address_1}}</td>
        </tr>

        <tr>
            <td>Address 2</td>
            <td>{{$audit_company->address_2}}</td>
        </tr>

        <tr>
            <td>Address 3</td>
            <td>{{$audit_company->address_3}}</td>
        </tr>

        <tr>
            <td>Phone Number</td>
            <td>{{$audit_company->phone_main}}</td>
        </tr>

        <tr>
            <td>Contact Name</td>
            <td>{{$audit_company->contact_name}}</td>
        </tr>

        <tr>
            <td>Contact Position</td>
            <td>{{$audit_company->contact_position}}</td>
        </tr>

        <tr>
            <td>Contact Mobile</td>
            <td>{{$audit_company->contact_mobile}}</td>
        </tr>

        <tr>
            <td>Contact Email</td>
            <td>{{$audit_company->contact_email}}</td>
        </tr>

		</tbody>
	</table>
</div>

