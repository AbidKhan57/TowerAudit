<!-- project_team/project_team.blade.php -->

@extends('layouts.app')

@section('content')
    <style>
        ul.breadcrumb {padding: 10px 16px; list-style: none; background-color: #eee;}
        ul.breadcrumb li {display: inline; font-size: 12px;}
        ul.breadcrumb li+li:before {padding: 8px; color: black; content: "/\00a0";}
        ul.breadcrumb li a {color: #0275d8; text-decoration: none; }
        ul.breadcrumb li a:hover {color: #01447e; text-decoration: underline;}

        .table.dataTable  {font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 12px;}
    </style>

    <div class="container">
        <button type="button" class="btn btn-primary btn-md" onclick="history.back()">&laquo; Back</button>
        <div class="card " style="width: 100%;">
        <div class="card-header bg-primary text-white">
             <?php
                    if (session()->get('my_test_key') == 'my_value'){
                    ?>
                <!-- CHANGE THIS FOR EACH NEW PAGE -->
                    <ul class="breadcrumb">
                        <li><a href="{{route('home')}}">Home</a></li>
                        <li><a href="{{route('project_management')}}">Project Management</a></li>
                        <li><a href="{{route('project_team')}}">Project Teams</a></li>
                    </ul>
                 <!-- CHANGE THIS FOR EACH NEW PAGE -->
                 <br>
                <?php
                session()->forget('my_test_key');
                }else{
                    ?>
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li><a href="{{route('project_management')}}">Project Management</a></li>
                    <li><span style="color: black">Project Teams</span></li>
                </ul>
                <br>
                <?php
                }
                ?>
            Working with PROJECT TEAMS as Data Type
        </div>
        <div style="padding: 30px">
            <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                <h2 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                    <span class="text-cyan-500">Managing Configured Project Team Data</span>
                </h2>
                <p class="mt-3 text-lg text-gray-700">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non diam fringilla, ultricies enim et, finibus erat. Aenean eu sem vel eros pellentesque placerat. Sed molestie urna in elit auctor, sagittis sagittis felis ornare. Cras rutrum suscipit dolor, et viverra leo sodales non.
                </p>
                <p class="mt-3 text-lg text-gray-700">
                    Phasellus consectetur, diam ut suscipit congue, turpis eros aliquam est, elementum posuere ante justo ac turpis. Suspendisse a neque in est venenatis pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc cursus hendrerit urna, ut bibendum ante. Ut est nisi, vulputate vel suscipit id, consequat nec felis.
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
            Project Teams
        </div>
        <div style="padding: 30px">

        <div style="overflow-x:auto;">
            <form action="#" method="post" id="project_team_form">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <!--begin: Datatable-->
                <table class="table table-sm table-bordered table-hover table-checkable cell-border stripe" id="project_team" style="margin-top: 9px !important">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Actions</th>
                        <th>Cust ID</th>
                        <th>Project ID</th>
                        <th>Internal Team Name</th>
                        <th>PM Name</th>
                        <th>PM Mobile</th>
                        <th>PM Email</th>


                    </tr>
                    </thead>
                    <tbody>

                    <?php $no=1 ?>
                    @foreach($all_project_team as $project_team)

                                <tr>
                                    <td style="width: 70px;"><a style="font-size: 23px;color:#21a337;margin-bottom: 4px" class="btn btn-sm btn-icon" title="View Project" href="javascript:void(0)"  onclick="viewInfo({{$project_team->id}})">
                                        <i class="fa fa-plus-circle"></i>
                                        </a>{{$no}}</td>
                                    <td>
                                        <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Edit Company" href="javascript:void(0)" onclick="editInfo({{$project_team->id}})">
                                        <i class="fa fa-pencil"></i>
                                        </a>

                                        <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Delete Company" href="javascript:void(0)" onclick="del({{$project_team->id}})">
                                        <i class="fa fa-close"></i>
                                        </a>
                                    </td>
                                    <td>{{$project_team->belongs_to_cust_id}}</td>
                                    <td>{{$project_team->project_table_ref_id}}</td>
                                    <td>{{$project_team->internal_project_team_name}}</td>
                                    <td>{{$project_team->pm_name}}</td>
                                    <td>{{$project_team->pm_mobile}}</td>
                                    <td>{{$project_team->pm_email}}</td>

                                </tr>
                            <?php $no++?>
                    @endforeach
                    </tbody>
                </table>
            </form>
            <!--end: Datatable-->
        </div>

        </div>

        <div>
            <button class="btn btn-primary" style="border-radius: 20px" onclick="create_modal();"><i class="fa fa-plus-circle"></i> ADD</button>


        </div>

    </div>
    </div>

        <div class="modal" id="project_team_add" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add NEW Project Team</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="padding: 50px;">
                        <form action="{{route('project_team_add')}}" method="post" id="project_team_add_form">
                            @csrf
                            <div class="row">
                                <div class="col">
                                    <label>Allocated to Customer</label>
                                    <input type="text" name="belongs_to_cust_id" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Allocated to Project</label>
                                    <input type="text" name="project_table_ref_id" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Internal Project Team Name</label>
                                    <input type="text" name="internal_project_team_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>PM Name</label>
                                    <input type="text" name="pm_name" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>PM Mobile</label>
                                    <input type="text" name="pm_mobile" class="form-control">
                                </div>
                                <div class="col">
                                    <label>PM Email</label>
                                    <input type="text" name="pm_email" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Senior Engineer Name</label>
                                    <input type="text" name="senior_engineer_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Senior Engineer Mobile</label>
                                    <input type="text" name="senior_engineer_mobile" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Senior Engineer Email</label>
                                    <input type="text" name="senior_engineer_email" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Engineer Name</label>
                                    <input type="text" name="engineer_name" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Engineer Mobile</label>
                                    <input type="text" name="engineer_mobile" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Engineer Email</label>
                                    <input type="text" name="engineer_email" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label>Data Reviewer Name</label>
                                    <input type="text" name="data_reviewer_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Data Reviewer Mobile</label>
                                    <input type="text" name="data_reviewer_mobile" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Data Reviewer Email</label>
                                    <input type="text" name="data_reviewer_email" class="form-control">
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



        <div class="modal" id="edit_project_team" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Project Team</h5>
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


        <div class="modal" id="view_project_team" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Project Team Detail</h5>
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
    @endsection

    @section('script')
            <script>
                $(document).ready( function () {
                    $('#project_team').DataTable();
                } );


                function viewInfo(id) {
                    var CSRF_TOKEN = '{{ csrf_token() }}';
                    $.post("{{ route('project_team_detail') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {
                        $('.viewmodalbody').html(response);
                        $('#view_project_team').modal('show');
                    });
                }

                function editInfo(id){
                    var CSRF_TOKEN = '{{ csrf_token() }}';
                    $.post("{{ route('project_team_edit') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {
                        $('.editmodalbody').html(response);
                        $('#edit_project_team').modal('show');
                    });
                }

                function editformsubmit() {
                    var a = $('input[name="ebelongs_to_cust_id"]').val();
                    var b = $('input[name="eproject_table_ref_id"]').val();
                    var c = $('input[name="einternal_project_team_name"]').val();
                    var d = $('input[name="epm_name"]').val();
                    var e = $('input[name="epm_mobile"]').val();
                    var f = $('input[name="epm_email"]').val();
                    var g = $('input[name="esenior_engineer_name"]').val();
                    var h = $('input[name="esenior_engineer_mobile"]').val();
                    var i = $('input[name="esenior_engineer_email"]').val();
                    var j = $('input[name="eengineer_name"]').val();
                    var k = $('input[name="eengineer_mobile"]').val();
                    var l = $('input[name="eengineer_email"]').val();
                    var m = $('input[name="edata_reviewer_name"]').val();
                    var n = $('input[name="edata_reviewer_mobile"]').val();
                    var o = $('input[name="edata_reviewer_email"]').val();


                    if(!a || !b || !c || !d || !e || !f){
                        alert('fill missing fields')
                    }else{
                        $('#project_team_edit_form').submit();
                    }
                }

                function create_modal() {
                    $('#project_team_add').modal('show');
                }

                function formsubmit() {
                    var a = $('input[name="belongs_to_cust_id"]').val();
                    var b = $('input[name="project_table_ref_id"]').val();
                    var c = $('input[name="internal_project_team_name"]').val();
                    var d = $('input[name="pm_name"]').val();
                    var e = $('input[name="pm_mobile"]').val();
                    var f = $('input[name="pm_email"]').val();
                    var g = $('input[name="senior_engineer_name"]').val();
                    var h = $('input[name="senior_engineer_mobile"]').val();
                    var i = $('input[name="senior_engineer_email"]').val();
                    var j = $('input[name="engineer_name"]').val();
                    var k = $('input[name="engineer_mobile"]').val();
                    var l = $('input[name="engineer_email"]').val();
                    var m = $('input[name="data_reviewer_name"]').val();
                    var n = $('input[name="data_reviewer_mobile"]').val();
                    var o = $('input[name="data_reviewer_email"]').val();


                   if(!a || !b || !c || !d || !e || !f){
                        alert('fill missing fields')
                    }else{
                        $('#project_team_add_form').submit();
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
                                "Audit Company has been deleted.",
                                "success"
                            );
                            var APP_URL = {!! json_encode(url('/')) !!}
                                window.location.href = APP_URL+"/admin/pm/project_team/";
                        }
                    });
                }
            </script>
    @endsection
