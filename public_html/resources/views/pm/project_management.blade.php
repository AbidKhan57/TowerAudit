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
                        <li><span style="color: black">Project Management</span></li>
                    </ul>
                 <!-- CHANGE THIS FOR EACH NEW PAGE -->

                <?php
                session()->forget('my_test_key');
                }else{
                    ?>
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li><span style="color: black">Project Management</span></li>
                </ul>
                <?php
                }
                ?>
        </div>
        <div style="padding: 30px">
            <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                <h3 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                    <span class="text-cyan-500">Project Management Sub Menu</span>
                </h3>
                <p class="mt-3 text-lg text-gray-700">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non diam fringilla, ultricies enim et, finibus erat. Aenean eu sem vel eros pellentesque placerat. Sed molestie urna in elit auctor, sagittis sagittis felis ornare. Cras rutrum suscipit dolor, et viverra leo sodales non.
                </p>
            </div>

        <hr>

        <div class="row mt-1 justify-content-center">

        </div>
        <hr>

         <div class="row mt-1 justify-content-left container">

             <div style="padding: 30px">
                 <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                     <h4 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                         <span class="text-cyan-500">Project Related Tasks</span>
                     </h4>
                 </div>
             </div>

            @if((auth()->user()->granted_user_role == "Sys-Admin") OR (auth()->user()->granted_user_role == "Cust-Admin") OR (auth()->user()->granted_user_role == "Cust-PM"))

                <div class="col-lg-1"></div>
                    {{ session()->put('my_test_key','my_value')}}

                    <div class="col-lg-2">
                            <button onclick="location.href='{{ url('admin/pm/project_team') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #3fda82;">
                                <div style="height: 60px;"><img style="width: 60px;height: 60px" src="{{asset('public/assets/img/ICONS-12.png')}}"></div>
                                <span style="font-size:15px; font-family: Calibri">Project</span><br>
                                <span style="font-size:15px; font-family: Calibri">Teams</span><br>
                            </button>
                    </div>

                    <div class="col-lg-2">
                            <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #d97d0b;">
                               <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-11.png')}}"></div>
                                <span style="font-size:15px; font-family: Calibri">Allocate Internal</span><br>
                                <span style="font-size:15px; font-family: Calibri">Project Teams to</span><br>
                                <span style="font-size:15px; font-family: Calibri">Project</span><br>
                            </button>
                    </div>

                     <div class="col-lg-2">
                            <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #d97d0b;">
                                <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-13.png')}}"></div>
                                <span style="font-size:15px; font-family: Calibri">Allocate Sites to</span><br>
                                <span style="font-size:15px; font-family: Calibri">Project Teams</span><br>
                            </button>
                    </div>

                    @endif

            </div>
            <br><br>
            <div class="row mt-1 justify-content-left container">
                <div style="padding: 30px">
                    <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                        <h4 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                            <span class="text-cyan-500">Audit Related Tasks</span>
                        </h4>
                    </div>
                </div>

                @if((auth()->user()->granted_user_role == "Sys-Admin") OR (auth()->user()->granted_user_role == "Cust-Admin") OR (auth()->user()->granted_user_role == "Cust-PM"))

                    <div class="col-lg-1"></div>
                    {{ session()->put('my_test_key','my_value')}}

                    <div class="col-lg-2">
                        <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #3fda82;">
                            <div style="height: 60px;"><img style="width: 60px;height: 60px" src="{{asset('public/assets/img/ICONS-12.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Allocate Audit</span><br>
                            <span style="font-size:15px; font-family: Calibri">Companies to</span><br>
                            <span style="font-size:15px; font-family: Calibri">Project</span><br>
                        </button>
                    </div>

                    <div class="col-lg-2">
                        <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #d97d0b;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-11.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Allocate Sites to</span><br>
                            <span style="font-size:15px; font-family: Calibri">Audit Companies</span><br>
                        </button>
                    </div>

                    <div class="col-lg-2">
                        <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #d97d0b;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-13.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Work with</span><br>
                            <span style="font-size:15px; font-family: Calibri">Audit Teams</span><br>
                        </button>
                    </div>

                    <div class="col-lg-2">
                        <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #d97d0b;">
                            <div style="height: 50px;"><img style="width: 60px;height: 60px" src="{{url('public/assets/img/ICONS-13.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Allocate Audit</span><br>
                            <span style="font-size:15px; font-family: Calibri">Teams to Sites</span><br>
                        </button>
                    </div>

                @endif

            </div>

            <br><br>
            <div class="row mt-1 justify-content-left container">
                <div style="padding: 30px">
                    <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                        <h4 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                            <span class="text-cyan-500">Audit Scheduling</span>
                        </h4>
                    </div>
                </div>

                @if((auth()->user()->granted_user_role == "Sys-Admin") OR (auth()->user()->granted_user_role == "Cust-Admin") OR (auth()->user()->granted_user_role == "Cust-PM"))

                    <div class="col-lg-1"></div>
                    {{ session()->put('my_test_key','my_value')}}

                    <div class="col-lg-2">
                        <button onclick="location.href='{{ url('test') }}'" class="btn btn-link rounded-0" style="text-decoration: none;color:white;height: 170px;width:120px;background-color: #3fda82;">
                            <div style="height: 60px;"><img style="width: 60px;height: 60px" src="{{asset('public/assets/img/ICONS-12.png')}}"></div>
                            <span style="font-size:15px; font-family: Calibri">Set Audit Dates</span><br>
                            <span style="font-size:15px; font-family: Calibri">and Status</span><br>
                        </button>
                    </div>


                @endif

            </div>





            <br>
        <button type="button" class="btn btn-primary btn-md" onclick="history.back()">&laquo; Back</button>
        <br>
    </div>
@endsection
