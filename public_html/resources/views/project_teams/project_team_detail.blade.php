<div class="card-datatable table-responsive">
	<table id="project_team_details" class="datatables-demo table table-striped table-bordered">
		<tbody>

        <tr>
            <td>Allocated to Customer</td>
            <td>{{$project_team->belongs_to_cust_id}}</td>
        </tr>

        <tr>
            <td>Allocated to Project</td>
            <td>{{$project_team->project_table_ref_id}}</td>
        </tr>

        <tr>
            <td>Internal Project Team Namex</td>
            <td>{{$project_team->internal_project_team_name}}</td>
        </tr>

        <tr>
            <td>PM Name</td>
            <td>{{$project_team->pm_name}}</td>
        </tr>
        <tr>
            <td>PM Mobile</td>
            <td>{{$project_team->pm_mobile}}</td>
        </tr>

        <tr>
            <td>PM Email</td>
            <td>{{$project_team->pm_email}}</td>
        </tr>

        <tr>
            <td>Senior Engineer Name</td>
            <td>{{$project_team->senior_engineer_name}}</td>
        </tr>

        <tr>
            <td>Senior Engineer Mobile</td>
            <td>{{$project_team->senior_engineer_mobile}}</td>
        </tr>

        <tr>
            <td>Senior Engineer Email</td>
            <td>{{$project_team->senior_engineer_email}}</td>
        </tr>

        <tr>
            <td>Engineer Name</td>
            <td>{{$project_team->engineer_name}}</td>
        </tr>

        <tr>
            <td>Engineer Mobile</td>
            <td>{{$project_team->engineer_mobile}}</td>
        </tr>

        <tr>
            <td>Engineer Email</td>
            <td>{{$project_team->engineer_email}}</td>
        </tr>

        <tr>
            <td>Data Reviewer Name</td>
            <td>{{$project_team->data_reviewer_name}}</td>
        </tr>

        <tr>
            <td>Data Reviewer Mobile</td>
            <td>{{$project_team->data_reviewer_mobile}}</td>
        </tr>

        <tr>
            <td>Data Reviewer Email</td>
            <td>{{$project_team->data_reviewer_email}}</td>
        </tr>

    	</tbody>
	</table>
</div>

