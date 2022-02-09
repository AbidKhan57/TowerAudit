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
            font-size: 15px;
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
    </style>
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
        <br>
                <ul class="breadcrumb">
            <li><a href="{{route('home')}}">Home</a></li>
            <li><span style="color: black">SYSTEM Administration Sub Menu</span></li>
        </ul>
        <br>
        <h5 class="text-center">SYSTEM Administration Sub Menu </h5>
        <hr>
        <div class="row mt-1 justify-content-center">
            <div class="col text-center"> <strong>Summary Statistics</strong></div>
        </div>

        <div class="row mt-1 justify-content-center">

            @if(auth()->user()->granted_user_role == "Sys-Admin")

                    <div class="col-lg-2" style="padding: 30px;">
                        <div style="padding: 10px;border: solid 3px darkgray;border-radius:5px;width: 180px;height: 70px;background-color: #90cdf4">
                            <div class="row">
                                <div class="col"><p><strong>Configured Customer</strong></p></div>
                                <div class="col"><h4 class="float-right">{{$data['configured_customer']}}</h4></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-2" style="padding: 30px;">
                        <div style="padding: 10px;border: solid 3px darkgray;border-radius:5px;width: 180px;height: 70px;background-color: #90cdf4">
                            <div class="row">
                                <div class="col"><p><strong>Configured Projects</strong></p></div>
                                <div class="col"><h4 class="float-right">{{$data['configured_projects']}}</h4></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-2" style="padding: 30px">
                        <div style="padding: 10px;border: solid 3px darkgray;border-radius:5px;width: 180px;height: 70px;background-color: #90cdf4">
                            <div class="row">
                                <div class="col"><p><strong>Active Projects</strong></p></div>
                                <div class="col"><h4 class="float-right">{{$data['active_projects']}}</h4></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-2" style="padding: 30px;">
                        <div style="padding: 10px;border: solid 3px darkgray;border-radius:5px;width: 180px;height: 70px;background-color: #90cdf4">
                            <div class="row">
                                <div class="col"><p><strong>Audit Companies</strong></p></div>
                                <div class="col"><h4 class="float-right">{{$data['audit_companies']}}</h4></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-2" style="padding: 30px">
                    <div style="padding: 10px;border: solid 3px darkgray;border-radius:5px;width: 180px;height: 70px;background-color: #90cdf4">
                        <div class="row">
                            <div class="col"><p><strong>Audit Engineers</strong></p></div>
                            <div class="col"><h4 class="float-right">{{$data['audit_engineers']}}</h4></div>
                        </div>
                    </div>
                </div>

            @endif

        </div>
        <hr>

        <div class="row mt-1 justify-content-center container">

            @if(auth()->user()->granted_user_role == "Sys-Admin")

                <div class="col-lg-1"></div>
                        <div class="col-lg-2">
                            {{ session()->put('my_test_key','my_value')}}
                            <button onclick="location.href='{{ url('admin/customer_index') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #3fda82;">
                                <div style="height: 60px;"><img style="width: 60px;height: 60px" src="{{asset('public/assets/img/ICONS-12.png')}}"></div>
                                <span style="font-size:15px; font-family: Calibri">Customers</span><br>
                            </button>
                        </div>

                <div class="col-lg-2">
                        <button onclick="location.href='{{ url('admin/audit_company') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #d97d0b;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-11.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Audit </span><br>
                            <span style="font-size:15px; font-family: Calibri">Companies</span>
                        </button>
                </div>

                <div class="col-lg-2">
                        <button onclick="location.href='{{ url('admin/sites') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #20448f;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-14.png')}}"></div>
                            <span style="font-size:17px; font-family: Calibri">Sites </span><br>
                        </button>
                </div>

                <div class="col-lg-2">
                        <button onclick="location.href='{{ url('admin/modules') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #d97d0b;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-13.png')}}"></div>
                            <br>
                            <span style="font-size:15px; font-family: Calibri">Modules </span><br>
                        </button>
                </div>

                <div class="col-lg-2">
                        <button onclick="location.href='{{ url('admin/project_index') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 120px;width:110px;background-color: #31388e;">
                            <div style="height: 50px;"><img style="width: 60px;height:60px" src="{{url('public/assets/img/ICON-07.png')}}"></div>
                            <br>
                            <span style="font-size:16px; font-family: Calibri">Projects </span><br>
                        </button>
                </div>



            @endif

        </div>
        <br>
        <button type="button" class="btn btn-primary btn-md" onclick="history.back()">&laquo; Back</button>
        <br>
    </div>
@endsection
