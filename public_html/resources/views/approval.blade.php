@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Waiting for Approval</div>

                    <div class="card-body">
                        @if (Auth::user()->user_status=='pending')
                             Account verification and activation is pending with the system
administrator. You will be notified using your registered email address when the status changes.
                        @endif
                        @if (Auth::user()->user_status=='disabled')
                            This Account is Disabled – Contact your project Administrator
                        @endif
                        @if (Auth::user()->user_status=='deleted')
                            Account Deleted
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
