<!-- CUSTOMER >> index.blade.php   -->

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
                        <li><a href="{{route('system_admin_sub')}}">SYSTEM Administration Sub Menu</a></li>
                        <li><span style="color: black">Customer</span></li>
                    </ul>
                 <!-- CHANGE THIS FOR EACH NEW PAGE -->
                 <br>
                <?php
                session()->forget('my_test_key');
                }else{
                    ?>
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li><span style="color: black">Customer</span></li>
                </ul>
                <br>
                <?php
                }
                ?>
            Working with CUSTOMER as Data Type
        </div>
        <div style="padding: 30px">
            <div class="mt-10 lg:mt-20 lg:text-center lg:max-w-xl lg:mx-auto">
                <h2 class="text-3xl font-headline tracking-tight font-bold text-gray-900 leading-tight sm:text-4xl md:text-5xl">
                    <span class="text-cyan-500">Managing Configured Customer Data</span>
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
                Customer
            </div>
            <div style="padding: 30px">
                <div style="overflow-x:auto;">
                    <form action="#" method="post" id="customer_form">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <!--begin: Datatable-->
                        <table class="table table-sm table-bordered table-hover table-checkable cell-border stripe" id="customers" style="margin-top: 9px !important">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Actions</th>
                                    <th>Name prefix</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php $no=1 ?>
                            @foreach($all_customers as $customer)

                                <tr>
                                   <td style="width: 70px;"><a style="font-size: 24px;color:#21a337;margin-bottom: 4px" class="btn btn-sm btn-icon" title="View Customer" href="javascript:void(0)" onclick="viewInfo({{$customer->id}})">
                                            <i class="fa fa-plus-circle"></i>
                                        </a>{{$no}}</td>
                                    <td>
                                       <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Edit Customer" href="javascript:void(0)" onclick="editInfo({{$customer->id}})">
                                            <i class="fa fa-pencil"></i>
                                        </a>

                                        <a style="font-size: 15px" class="btn btn-sm btn-icon" title="Delete Customer" href="javascript:void(0)" onclick="del({{$customer->id}})">
                                            <i class="fa fa-close"></i>
                                        </a>
                                    </td>
                                    <td>{{$customer->cust_name_prefix}}</td>

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

            </div>
        </div>

        <div class="modal" id="add_customer" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add new customer</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="padding: 50px;">
                        <form action="{{route('store_customer')}}" method="post" id="customer_add_form">
                           @csrf
                            <div class="row">
                                <div class="col">
                                    <label>Customer Type</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="cust_type">
                                        <option value="direct" selected>direct</option>
                                        <option value="direct_via_reseller">direct_via_reseller</option>
                                        <option value="partner">partner</option>
                                        <option value="partner_cust">partner_cust</option>
                                        <option value="admin">admin</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label>Customer name prefix</label>
                                    <input type="text" name="cust_name_prefix" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Customer Full name</label>
                                    <input type="text" name="cust_name_full" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Belongs to Customer</label>
                                    <input type="text" name="cust_belongs_to" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Customer Status</label>
                                    <select class="form-control" id="exampleFormControlSelect3" name="cust_status">
                                        <option value="pending" selected>pending</option>
                                        <option value="active">active</option>
                                        <option value="archived">archived</option>
                                        <option value="deleted">deleted</option>
                                        <option value="suspended">suspended</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <label>Address Region</label>
                                    <input type="text" name="address_region" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Address Country</label>
                                    <input type="text" name="address_country" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Address Zip</label>
                                    <input type="text" name="address_zip" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Address Area</label>
                                    <input type="text" name="address_area" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Address City</label>
                                    <input type="text" name="address_city" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Address 1</label>
                                    <input type="text" name="address_1" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Address 2</label>
                                    <input type="text" name="address_2" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Address 3</label>
                                    <input type="text" name="address_3" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Phone Number</label>
                                    <input type="text" name="phone_main" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Contact Name</label>
                                    <input type="text" name="contact_name" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Contact Position</label>
                                    <input type="text" name="contact_position" class="form-control">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <label>Contact Mobile</label>
                                    <input type="text" name="contact_mobile" class="form-control">
                                </div>
                                <div class="col">
                                    <label>Contact Email</label>
                                    <input type="text" name="contact_email" class="form-control">
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
            <div class="modal-dialog" role="document">
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
                            <h5 class="modal-title">Customer Detail</h5>
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
            $('#customers').DataTable();
        } );


        function viewInfo(id) {
            var CSRF_TOKEN = '{{ csrf_token() }}';
            $.post("{{ route('customer_detail') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {
                $('.viewmodalbody').html(response);
                $('#view_customer').modal('show');
            });
        }

        function editInfo(id){
           var CSRF_TOKEN = '{{ csrf_token() }}';
            $.post("{{ route('customer_edit') }}", {_token: CSRF_TOKEN, id: id}).done(function (response) {
                $('.editmodalbody').html(response);
                $('#edit_customer').modal('show');
            });
        }

        function editformsubmit() {
            var a = $('input[name="ecust_name_prefix"]').val();
            var b = $('input[name="ecust_name_full"]').val();
            var c = $('input[name="eaddress_region"]').val();
            var d = $('input[name="eaddress_country"]').val();
            var e = $('input[name="eaddress_zip"]').val();
            var f = $('input[name="eaddress_area"]').val();
            var g = $('input[name="eaddress_city"]').val();
            var h = $('input[name="eaddress_1"]').val();
            var i = $('input[name="eaddress_2"]').val();
            var j = $('input[name="eaddress_3"]').val();
            var k = $('input[name="ephone_main"]').val();
            var l = $('input[name="econtact_name"]').val();
            var m = $('input[name="econtact_position"]').val();
            var n = $('input[name="econtact_mobile"]').val();
            var o = $('input[name="econtact_email"]').val();
            var p = $('input[name="ecust_type"]').val();
            var q = $('input[name="ecust_belongs_to"]').val();
            var r = $('input[name="ecust_status"]').val();

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
            var a = $('input[name="cust_name_prefix"]').val();
            var b = $('input[name="cust_name_full"]').val();
            var c = $('input[name="address_region"]').val();
            var d = $('input[name="address_country"]').val();
            var e = $('input[name="address_zip"]').val();
            var f = $('input[name="address_area"]').val();
            var g = $('input[name="address_city"]').val();
            var h = $('input[name="address_1"]').val();
            var i = $('input[name="address_2"]').val();
            var j = $('input[name="address_3"]').val();
            var k = $('input[name="phone_main"]').val();
            var l = $('input[name="contact_name"]').val();
            var m = $('input[name="contact_position"]').val();
            var n = $('input[name="contact_mobile"]').val();
            var o = $('input[name="contact_email"]').val();
            var p = $('input[name="cust_status"]').val();
            var q = $('input[name="cust_belongs_to"]').val();

            if(!a || !b || !c || !d || !e || !f || !g || !h || !i || !j || !k || !l || !m || !n || !o){
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
                        "Customer has been deleted.",
                        "success"
                    );
                    var APP_URL = {!! json_encode(url('/')) !!}
                        window.location.href = APP_URL+"/customer_delete/"+id;
                }
            });
        }
    </script>
@endsection
