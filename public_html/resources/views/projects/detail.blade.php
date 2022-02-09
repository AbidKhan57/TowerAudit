<div class="card-datatable table-responsive">
	<table id="clients" class="datatables-demo table table-striped table-bordered">
		<tbody>

        <tr>
            <td>Customer Name Prefix</td>
            <td>{{$project->cust_name_prefix}}</td>
        </tr>

        <tr>
            <td>Internal Project ID</td>
            <td>{{$project->internal_project_short_name}}</td>
        </tr>

        <tr>
            <td>Internal Project Name</td>
            <td>{{$project->internal_project_long_name}}</td>
        </tr>

        <tr>
            <td>Plan Start</td>
            <td>{{$project->project_planned_start}}</td>
        </tr>

        <tr>
            <td>Plan End</td>
            <td>{{$project->project_planned_end}}</td>
        </tr>

        <tr>
            <td>Status</td>
            <td>{{$project->project_status}}</td>
        </tr>

        <tr>
            <td>Project Description</td>
            <td>{{$project->client_project_description}}</td>
        </tr>

        <tr>
            <td>Client Company Name</td>
            <td>{{$project->client_company_name}}</td>
        </tr>
        <tr>
            <td>Client Contact Name</td>
            <td>{{$project->client_contact_name}}</td>
        </tr>

        <tr>
            <td>Client Contact Phone</td>
            <td>{{$project->client_contact_phone}}</td>
        </tr>

        <tr>
            <td>Client Contact Email</td>
            <td>{{$project->client_contact_email}}</td>
        </tr>

        <tr>
            <td>Internal project Owner Phone</td>
            <td>{{$project->internal_project_owner_phone}}</td>
        </tr>

        <tr>
            <td>Internal Project Owner Email</td>
            <td>{{$project->internal_project_owner_email}}</td>
        </tr>

		</tbody>
	</table>
</div>

