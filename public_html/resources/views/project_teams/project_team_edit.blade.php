<!-- audit_company >> audit_company_edit.blade.php   -->
<div class="card-datatable table-responsive" style="padding: 20px">
    <form action="{{route('project_team_update')}}" method="post" id="project_team_edit_form" style="border: 1px solid grey;padding: 20px;border-radius: 20px">
        @csrf

        <input type="hidden"  name="id" value="{{$project_team->id}}">
        <div class="row">
            <div class="col">
                <label>Allocated to Customer</label>
                <input type="text" name="ebelongs_to_cust_id" class="form-control" value="{{$project_team->belongs_to_cust_id}}">
            </div>
            <div class="col">
                <label>Allocated to Project</label>
                <input type="text" name="eproject_table_ref_id" class="form-control" value="{{$project_team->project_table_ref_id}}">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label>Internal Project Team Name</label>
                <input type="text" name="einternal_project_team_name" class="form-control" value="{{$project_team->internal_project_team_name}}">
            </div>
            <div class="col">
                <label>PM Name</label>
                <input type="text" name="epm_name" class="form-control" value="{{$project_team->pm_name}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>PM Mobile</label>
                <input type="text" name="epm_mobile" class="form-control" value="{{$project_team->pm_mobile}}">
            </div>
            <div class="col">
                <label>PM Email</label>
                <input type="text" name="epm_email" class="form-control" value="{{$project_team->pm_email}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Senior Engineer Name</label>
                <input type="text" name="esenior_engineer_name" class="form-control" value="{{$project_team->senior_engineer_name}}">
            </div>
            <div class="col">
                <label>Senior Engineer Mobile</label>
                <input type="text" name="esenior_engineer_mobile" class="form-control" value="{{$project_team->senior_engineer_mobile}}">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label>Senior Engineer Email</label>
                <input type="text" name="esenior_engineer_email" class="form-control" value="{{$project_team->senior_engineer_email}}">
            </div>
            <div class="col">
                <label>Engineer Name</label>
                <input type="text" name="eengineer_name" class="form-control" value="{{$project_team->engineer_name}}">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label>Engineer Mobile</label>
                <input type="text" name="eengineer_mobile" class="form-control" value="{{$project_team->engineer_mobile}}">
            </div>
            <div class="col">
                <label>Engineer Email</label>
                <input type="text" name="eengineer_email" class="form-control" value="{{$project_team->engineer_email}}">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label>Data Reviewer Name</label>
                <input type="text" name="edata_reviewer_name" class="form-control" value="{{$project_team->data_reviewer_name}}">
            </div>
            <div class="col">
                <label>Data Reviewer Mobile</label>
                <input type="text" name="edata_reviewer_mobile" class="form-control" value="{{$project_team->data_reviewer_mobile}}">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Data Reviewer Email</label>
                <input type="text" name="edata_reviewer_email" class="form-control" value="{{$project_team->data_reviewer_email}}">
            </div>
        </div>

    </form>

</div>

