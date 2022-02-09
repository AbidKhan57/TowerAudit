@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    {{ __('You are logged in as your role is !') }} {{Auth::user()->requested_role}}


                </div>

            </div>
        </div>
    </div>
    <div class="row mt-1 p-5 justify-content-center">

        <h5 class="col-12 text-center">SYSTEM Administration</h5>

        <div class="w3-show-inline-block" style="margin-left: 30px;">
            <div class="w3-bar">
                <button @if(auth()->user()->granted_user_role != "Sys-Admin") disabled @else onclick="location.href='{{ url('system_admin_sub') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #31388e;">
                    <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{asset('public/assets/img/ICON-07.png')}}"></div>
                    <span style="font-size:12px; font-family: Calibri">SYSTEM </span><br>
                    <span style="font-size:12px; font-family: Calibri">ADMINISTRATION</span>
                </button>
            </div>
        </div>

        <div class="w3-show-inline-block" style="margin-left: 30px">
            <div class="w3-bar">
                <button  @if(auth()->user()->granted_user_role != "Sys-Admin") disabled @else onclick="location.href='{{ url('test') }}'" @endif class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #3fda82">
                    <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-09.png')}}"></div>
                    <span style="font-size:12px; font-family: Calibri">SYSTEM </span><br>
                    <span style="font-size:12px; font-family: Calibri">REPORTING</span>
                </button>
            </div>
        </div>

    </div>
    <div class="row mt-1">

            <h5 class="col-3 text-center" style="margin-left: 30px;">Customer<br> Data Reporting</h5>
            <h5 class="col-4 text-center" style="margin-left: 50px;">Customer <br>Solution Administration</h5>
            <h5 class="col-3 text-center">Customer <br>Project Management</h5>

        <div>
            <div class="w3-show-inline-block" style="margin-left: 90px;">
                <div class="w3-bar">
                    <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #4999d6;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-10.png')}}"></div>
                        <span style="font-size:16px; font-family: Calibri">Audit Data </span><br>
                    </button>
                </div>
            </div>
            <div class="w3-show-inline-block" style="margin-left: 10px">
                <div class="w3-bar">
                    <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #eb4d4f;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-11.png')}}"></div>
                        <span style="font-size:16px; font-family: Calibri">Reporting </span><br>
                    </button>
                </div>
            </div>

            <div class="w3-show-inline-block" style="margin-left: 60px">
                <div class="w3-bar">
                    <button  @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin") disabled @else onclick="location.href='{{ url('admin/customer_index') }}'" @endif class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #3fda82;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICONS-12.png')}}"></div>
                        <span style="font-size:16px; font-family: Calibri">Customers </span><br>
                    </button>
                </div>
            </div>
            <div class="w3-show-inline-block" style="margin-left: 10px">
                <div class="w3-bar">
                    <button  @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin") disabled @else onclick="location.href='{{ url('admin/audit_company') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #d97d0b;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICONS-11.png')}}"></div>
                        <span style="font-size:15px; font-family: Calibri">Audit </span><br>
                        <span style="font-size:15px; font-family: Calibri">Companies</span>
                    </button>
                </div>
            </div>
            <div class="w3-show-inline-block" style="margin-left: 10px">
                <div class="w3-bar">
                    <button   @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin") disabled @else onclick="location.href='{{ url('admin/sites') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #20448f;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICONS-14.png')}}"></div>
                        <span style="font-size:17px; font-family: Calibri">Sites </span><br>
                    </button>
                </div>
            </div>

            <div class="w3-show-inline-block" style="margin-left: 80px">
                <div class="w3-bar">
                    <button   @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin" && auth()->user()->granted_user_role != "Cust-PM") disabled @else onclick="location.href='{{ url('admin/pm') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #3fda82;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-09.png')}}"></div>
                        <span style="font-size:15px; font-family: Calibri">Audit Project </span><br>
                        <span style="font-size:15px; font-family: Calibri">Management</span>
                    </button>
                </div>
            </div>
        </div>

        <div style="margin-top: 30px;">
            <div class="w3-show-inline-block" style="margin-left: 90px;">
                <div class="w3-bar">
                    <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:240px;background-color: #31388e;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-07.png')}}"></div>
                        <span style="font-size:16px; font-family: Calibri">End Client Output </span><br>
                        <span style="font-size:16px; font-family: Calibri">Report </span>
                    </button>
                </div>
            </div>

            <div class="w3-show-inline-block" style="margin-left: 60px">
                <div class="w3-bar">
                    <button   @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin") disabled @else onclick="location.href='{{ url('admin/project_index') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #31388e;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICON-07.png')}}"></div>
                        <span style="font-size:16px; font-family: Calibri">Projects </span><br>
                    </button>
                </div>
            </div>
            <div class="w3-show-inline-block" style="margin-left: 10px">
                <div class="w3-bar">
                    <button @if(auth()->user()->granted_user_role != "Sys-Admin" && auth()->user()->granted_user_role != "Cust-Admin") disabled @else onclick="location.href='{{ url('admin/modules') }}'" @endif  class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #d97d0b;">
                        <div style="height: 50px;"><img style="width: 50px;height: 50px" src="{{url('public/assets/img/ICONS-13.png')}}"></div>
                        <span style="font-size:15px; font-family: Calibri">Modules </span><br>
                    </button>
                </div>
            </div>
        </div>


    </div>
</div>
@endsection
