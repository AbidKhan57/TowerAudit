<div class="card-datatable table-responsive">
	<table id="clients" class="datatables-demo table table-striped table-bordered">
		<tbody>

        <tr>
            <td>Type</td>
            <td>{{$customer->cust_type}}</td>
        </tr>

        <tr>
            <td>Name Prefix</td>
            <td>{{$customer->cust_name_prefix}}</td>
        </tr>

        <tr>
            <td>Full Name</td>
            <td>{{$customer->cust_name_full}}</td>
        </tr>

        <tr>
            <td>Cust Status</td>
            <td>{{$customer->cust_status}}</td>
        </tr>

        <tr>
            <td>Belongs To</td>
            <td>{{$customer->cust_belongs_to}}</td>
        </tr>
        
        <tr>
            <td>Address Region</td>
            <td>{{$customer->address_region}}</td>
        </tr>

        <tr>
            <td>Address Country</td>
            <td>{{$customer->address_country}}</td>
        </tr>

        <tr>
            <td>Address Zip</td>
            <td>{{$customer->address_zip}}</td>
        </tr>

        <tr>
            <td>Address Area</td>
            <td>{{$customer->address_area}}</td>
        </tr>

        <tr>
            <td>Address City</td>
            <td>{{$customer->address_city}}</td>
        </tr>

        <tr>
            <td>Address 1</td>
            <td>{{$customer->address_1}}</td>
        </tr>

        <tr>
            <td>Address 2</td>
            <td>{{$customer->address_2}}</td>
        </tr>

        <tr>
            <td>Address 3</td>
            <td>{{$customer->address_3}}</td>
        </tr>

        <tr>
            <td>Phone Number</td>
            <td>{{$customer->phone_main}}</td>
        </tr>

        <tr>
            <td>Contact Name</td>
            <td>{{$customer->contact_name}}</td>
        </tr>

        <tr>
            <td>Contact Position</td>
            <td>{{$customer->contact_position}}</td>
        </tr>

        <tr>
            <td>Contact Mobile</td>
            <td>{{$customer->contact_mobile}}</td>
        </tr>

        <tr>
            <td>Contact Email</td>
            <td>{{$customer->contact_email}}</td>
        </tr>

		</tbody>
	</table>
</div>

