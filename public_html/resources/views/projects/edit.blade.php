<div class="card-datatable table-responsive" style="padding: 20px">
    <form action="{{route('project_update')}}" method="post" id="customer_edit_form" style="border: 1px solid grey;padding: 20px;border-radius: 20px">
        @csrf
        <input type="hidden" name="epro_id" value="{{$project->id}}">
        <div class="row">
            <div class="col">
                <label>System Date Time of last Change</label>
                <input type="text" name="esystem_datetime_of_last_change" class="form-control" value="{{$project->system_datetime_of_last_change}}">
            </div>

            <div class="col">
                <label>app project Name</label>
                <input type="text" name="eapp_project_name" class="form-control" value="{{$project->app_project_name}}">
            </div>
        </div>

        <br>
        <div class="row">
            <div class="col">
                <label>Select Customer</label>
                <select class="form-control" id="exampleFormControlSelect1" name="ecust_id">
                    <option value="{{$project->cust_id}}">{{$customer_full_name}}</option>
                    @foreach($all_customers as $customer)
                        <option value="{{$customer->id}}">{{$customer->cust_name_full}}</option>
                    @endforeach

                </select>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Project Status</label>
                <select class="form-control" id="exampleFormControlSelect1" name="eproject_status">
                    <option value="{{$project->project_status}}" selected>{{$project->project_status}}</option>
                    <option value="NEW">NEW</option>
                    <option value="Discussion">Discussion</option>
                    <option value="Quoted">Quoted</option>
                    <option value="Accepted">Accepted</option>
                    <option value="Started">Started</option>
                    <option value="Completed">Completed</option>
                    <option value="Closed">Closed</option>
                    <option value="On-Hold">On-Hold</option>
                </select>
            </div>
            <div class="col">
                <label>App Menu ID</label>
                <input type="text" name="eapp_menu_id" class="form-control" value="{{$project->app_menu_id}}">
            </div>
        </div>
        <br>

        <div class="row">

            <div class="col">
                <label>Internal Project Short Name</label>
                <input type="text" name="einternal_project_short_name" class="form-control" value="{{$project->internal_project_short_name}}">
            </div>
            <div class="col">
                <label>Internal Project Long Name</label>
                <input type="text" name="einternal_project_long_name" class="form-control" value="{{$project->internal_project_long_name}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Project Planned Start</label>
                <input type="date" name="eproject_planned_start" class="form-control" value="{{$project->project_planned_start}}">
            </div>
            <div class="col">
                <label>Project Planned End</label>
                <input type="date" name="eproject_planned_end" class="form-control" value="{{$project->project_planned_end}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Client Project Short Name</label>
                <input type="text" name="eclient_project_short_name" class="form-control" value="{{$project->client_project_short_name}}">
            </div>
            <div class="col">
                <label>Client Project Long Name</label>
                <input type="text" name="eclient_project_long_name" class="form-control" value="{{$project->client_project_long_name}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Client Project Description</label>
                <input type="text" name="eclient_project_description" class="form-control" value="{{$project->client_project_description}}">
            </div>
            <div class="col">
                <label>Client Company Name</label>
                <input type="text" name="eclient_company_name" class="form-control" value="{{$project->client_company_name}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Client Contact Name</label>
                <input type="text" name="eclient_contact_name" class="form-control" value="{{$project->client_contact_name}}">
            </div>
            <div class="col">
                <label>Client Contact Phone</label>
                <input type="text" name="eclient_contact_phone" class="form-control" value="{{$project->client_contact_phone}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Client Contact Email</label>
                <input type="text" name="eclient_contact_email" class="form-control" value="{{$project->client_contact_email}}">
            </div>
            <div class="col">
                <label>Internal Project Owner</label>
                <input type="text" name="einternal_project_owner" class="form-control" value="{{$project->internal_project_owner}}">
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col">
                <label>Internal Project Owner Phone</label>
                <input type="text" name="einternal_project_owner_phone" class="form-control" value="{{$project->internal_project_owner_phone}}">
            </div>
            <div class="col">
                <label>Internal Project Owner Email</label>
                <input type="text" name="einternal_project_owner_email" class="form-control" value="{{$project->internal_project_owner_email}}">
            </div>

        </div>
    </form>

</div>

