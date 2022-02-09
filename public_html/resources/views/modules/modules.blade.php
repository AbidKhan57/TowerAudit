<!-- modules/modules.blade.php -->

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
                        <li><a href="{{route('modules')}}">Modules</a></li>
                    </ul>
                 <!-- CHANGE THIS FOR EACH NEW PAGE -->
                 <br>
                <?php
                session()->forget('my_test_key');
                }else{
                    ?>
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li><span style="color: black">Modules</span></li>
                </ul>
                <br>
                <?php
                }
                ?>
            Working with AUDIT MODULES as Data Type
        </div>
        <div style="padding: 30px">
            <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                <h2 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                    <span class="text-cyan-500">Managing Configured Audit Modules Data</span>
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
            Audit Modules
        </div>
        <div style="padding: 30px">

        <div style="overflow-x:auto;">
            <form action="#" method="post" id="audit_companies_form">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <!--begin: Datatable-->
                <table class="table table-sm table-bordered table-hover table-checkable cell-border stripe" id="audir_companies" style="margin-top: 9px !important">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Actions</th>
                        <th>Name prefix</th>

                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </form>

        </div>
        <div>
             <button class="btn btn-primary" style="border-radius: 20px" onclick="create_modal();"><i class="fa fa-plus-circle"></i> ADD</button>

        </div>

    </div>
    </div>

@endsection


