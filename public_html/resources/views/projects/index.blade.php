@extends('layouts.app')

@section('content')
    <style>
        ul.breadcrumb {
            padding: 10px 16px;
            list-style: none;
            background-color: #eee;
        }
        ul.breadcrumb li {
            display: inline;
            font-size: 12px;
        }
        ul.breadcrumb li+li:before {
            padding: 8px;
            color: black;
            content: "/\00a0";
        }
        ul.breadcrumb li a {
            color: #0275d8;
            text-decoration: none;
        }
        ul.breadcrumb li a:hover {
            color: #01447e;
            text-decoration: underline;
        }
        .table.dataTable  {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: 12px;
        }
    </style>
    <div class="container">
        <button type="button" class="btn btn-primary btn-md" onclick="history.back()">&laquo; Back</button>
        <div class="card " style="width: 100%;">
        <div class="card-header bg-primary text-white">
            <?php
            if (session()->get('my_test_key') == 'my_value'){
            ?>
            <ul class="breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('system_admin_sub')}}">SYS Admin Sub Menu</a></li>
                <li><span style="color: black">Projects</span></li>
            </ul>
            <br>
            <?php
            session()->forget('my_test_key');
            }else{
            ?>
            <ul class="breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li><span style="color: black">Projects</span></li>
            </ul>
            <br>
            <?php
            }
            ?>
            Working with PROJECTS as Data Type
        </div>
        <div style="padding: 30px">
            <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                <h2 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                    <span class="text-cyan-500">Managing Configured Projects Data</span> 
                </h2>
                <p class="mt-3 text-lg text-gray-700">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non diam fringilla, ultricies enim et, finibus erat. Aenean eu sem vel eros pellentesque placerat. Sed molestie urna in elit auctor, sagittis sagittis felis ornare. Cras rutrum suscipit dolor, et viverra leo sodales non.
                </p>
                <p class="mt-3 text-lg text-gray-700">
                    Phasellus consectetur, diam ut suscipit congue, turpis eros aliquam est, elementum posuere ante justo ac turpis. Suspendisse a neque in est venenatis pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc cursus hendrerit urna, ut bibendum ante. Ut est nisi, vulputate vel suscipit id, consequat nec felis. 
                </p>
                <p class="mt-3 text-lg text-gray-700">
                    Praesent placerat neque vel nunc consectetur, in semper ligula varius. Vivamus et ornare ante. Morbi quis maximus ante. Praesent luctus finibus eros ut consectetur. Nulla tincidunt laoreet mi sit amet commodo. Sed facilisis ante turpis, a consequat orci efficitur sed. In hac habitasse platea dictumst.
                </p>
            </div>
        </div>


        
         @if (\Session::has('success'))
            <div class="alert alert-success">
                <ul>
                    <li>{!! \Session::get('success') !!}</li>
                </ul>
            </div>
        @endif


        <div class="card " style="width: 100%;">
        <div class="card-header bg-primary text-white">
            Projects
        </div>
        <div style="padding: 30px">

        <div style="overflow-x:auto;">
            <form action="#" method="post" id="customer_form">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <!--begin: Datatable-->
                <table class="table table-sm table-bordered table-hover table-checkable cell-border stripe" id="projects" style="margin-top: 13px !important">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Actions</th>
                        <th>Customer Name Prefix</th>
                        <th>Internal Project ID</th>
                        <th>Internal Project Name</th>
                        <th>Plan Start</th>
                        <th>Plan End</th>
                        <th>Status</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php $no=1 ?>
                    @foreach($all_projects as $project)

                        <tr>
                             <td style="width: 70px;"><a style="font-size: 23px;color:#21a337;margin-bottom: 4px" class="btn btn-sm btn-icon" title="View Project" href="javascript:void(0)"  onclick="viewInfo({{$project->id}})">
                                        <i class="fa fa-plus-circle"></i>
                                    </a>{{$no}}</td>
                                <td>
                                    <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Edit Project" href="javascript:void(0)" onclick="editInfo({{$project->id}})">
                                        <i class="fa fa-pencil"></i>
                                    </a>

                                    <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Delete Project" href="javascript:void(0)" onclick="del({{$project->id}})">
                                        <i class="fa fa-close"></i>
                                    </a>
                                </td>
                            <td>{{$project->cust_name_prefix}}</td>
                            <td>{{$project->internal_project_short_name}}</td>
                            <td>{{$project->internal_project_long_name}}</td>
                            <td>{{$project->project_planned_start}}</td>
                            <td>{{$project->project_planned_end}}</td>
                            <td>{{$project->project_status}}</td>
                        </tr>
                    <?php $no++?>
                    @endforeach
                    </tbody>
                </table>
            </form>
            <!--end: Datatable-->
        </div>
        
        
        <div>
            <button class="btn btn-primary" style="border-radius: 20px" onclick="create_modal();"><i class="fa fa-plus-circle"></i> ADD</button>
           
        </div>
        </div></div>

    </div>
    </div>
    
            <div class="modal" id="add_customer" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add new Project</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="padding: 50px;">
                        <form action="{{route('project_store')}}" method="post" id="customer_add_form">
                            @csrf
                            <div class="row">
                                <div class="col">
                                    <label>System Date Time of last Change</label>
                                    <input type="datetime-local" name="system_datetime_of_last_change" class="form-control">
                                </div>

                                <div class="col">
                                    <label>app project Name</label>
                                    <input type="text" name="app_project_name" class="form-control">
                                </div>
                            </div>

                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Select Customer</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="cust_id">

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
                                    <select class="form-control" id="exampleFormControlSelect1" name="project_status">

                                        <option value="NEW" selected>NEW</option>
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
                                    <input type="text" name="app_menu_id" class="form-control">
                                </div>
                            </div>
                            <br>

                            <div class="row">

                                <div class="col">
                                    <label>Internal Project Short Name</label>
                                    <input type="text" name="internal_project_short_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Internal Project Long Name</label>
                                    <input type="text" name="internal_project_long_name" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Project Planned Start</label>
                                    <input type="date" name="project_planned_start" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Project Planned End</label>
                                    <input type="date" name="project_planned_end" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                    <div class="col">
                                        <label>Client Project Short Name</label>
                                        <input type="text" name="client_project_short_name" class="form-control">
                                    </div>
                                <div class="col">
                                    <label>Client Project Long Name</label>
                                    <input type="text" name="client_project_long_name" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Client Project Description</label>
                                    <input type="text" name="client_project_description" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Client Company Name</label>
                                    <input type="text" name="client_company_name" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Client Contact Name</label>
                                    <input type="text" name="client_contact_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Client Contact Phone</label>
                                    <input type="text" name="client_contact_phone" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Client Contact Email</label>
                                    <input type="text" name="client_contact_email" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Internal Project Owner</label>
                                    <input type="text" name="internal_project_owner" class="form-control">
                                </div>

                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Internal Project Owner Phone</label>
                                    <input type="text" name="internal_project_owner_phone" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Internal Project Owner Email</label>
                                    <input type="text" name="internal_project_owner_email" class="form-control">
                                </div>

                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="formsubmit();">Save and Close</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" id="view_customer" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Customer Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body viewmodalbody">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" id="edit_customer" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Project Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body editmodalbody">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="editformsubmit();">Update and Close</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready( function () {
            $('#projects').DataTable();
        } );


        function viewInfo(id) {

            var CSRF_TOKEN = '{{ csrf_token() }}';
            $.post("{{ route('project_detail') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {


                $('.viewmodalbody').html(response);
                $('#view_customer').modal('show');

            });
        }

        function editInfo(id){

            var CSRF_TOKEN = '{{ csrf_token() }}';
            $.post("{{ route('project_edit') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {


                $('.editmodalbody').html(response);
                $('#edit_customer').modal('show');

                //console.log(response);

            });
        }

        function editformsubmit() {
            var a = $('input[name="esystem_datetime_of_last_change"]').val();
            var b = $('input[name="eapp_project_name"]').val();
            var c = $('input[name="eapp_menu_id"]').val();
            var d = $('input[name="einternal_project_short_name"]').val();
            var e = $('input[name="einternal_project_long_name"]').val();
            var f = $('input[name="eproject_planned_start"]').val();
            var g = $('input[name="eproject_planned_end"]').val();
            var h = $('input[name="eclient_project_short_name"]').val();
            var i = $('input[name="eclient_project_long_name"]').val();
            var j = $('input[name="eclient_project_description"]').val();
            var k = $('input[name="eclient_company_name"]').val();
            var l = $('input[name="eclient_contact_name"]').val();
            var m = $('input[name="eclient_contact_phone"]').val();
            var n = $('input[name="eclient_contact_email"]').val();
            var o = $('input[name="einternal_project_owner_phone"]').val();
            var p = $('input[name="einternal_project_owner_email"]').val();

            if(!a || !b || !c || !d || !e || !f || !g || !h || !i || !j || !k || !l || !m || !n || !o){
                alert('fill missing fields')
            }else{
                $('#customer_edit_form').submit();
            }
        }

        function create_modal() {

            $('#add_customer').modal('show');
        }

        function formsubmit() {
            var a = $('input[name="system_datetime_of_last_change"]').val();
            var b = $('input[name="app_project_name"]').val();
            var c = $('input[name="app_menu_id"]').val();
            var d = $('input[name="internal_project_short_name"]').val();
            var e = $('input[name="internal_project_long_name"]').val();
            var f = $('input[name="project_planned_start"]').val();
            var g = $('input[name="project_planned_end"]').val();
            var h = $('input[name="client_project_short_name"]').val();
            var i = $('input[name="client_project_long_name"]').val();
            var j = $('input[name="client_project_description"]').val();
            var k = $('input[name="client_company_name"]').val();
            var l = $('input[name="client_contact_name"]').val();
            var m = $('input[name="client_contact_phone"]').val();
            var n = $('input[name="client_contact_email"]').val();
            var o = $('input[name="internal_project_owner_phone"]').val();
            var p = $('input[name="internal_project_owner_email"]').val();


            if(!a || !b || !c || !d || !e || !f || !g || !h || !i || !j || !k || !l || !m || !n || !o || !p){
                alert('fill missing fields')
            }else{
                $('#customer_add_form').submit();
            }

        }

        function del(id){
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Yes, delete it!"
            }).then(function(result) {
                if (result.value) {
                    Swal.fire(
                        "Deleted!",
                        "Project has been deleted.",
                        "success"
                    );
                    var APP_URL = {!! json_encode(url('/')) !!}
                        window.location.href = APP_URL+"/project_delete/"+id;
                }
            });
        }
    </script>
@endsection
