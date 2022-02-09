<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use Illuminate\Validation\ValidationException;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */


    use SendsPasswordResetEmails;

    public function __construct()
    {
        $this->middleware('throttle:2,5');
    }

    /**
     * Send a reset link to the given user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function sendResetLinkEmail(Request $request)
    {
        $this->validateEmail($request);
    
        $user = User::where('email', $request->email)->first();
        $message = 'Wrong email address';
        if ($user) {
            if ($user->user_status == 'active') {
                // We will send the password reset link to this user. Once we have attempted
                // to send the link, we will examine the response then see the message we
                // need to show to the user. Finally, we'll send out a proper response.
                $response = $this->broker()->sendResetLink(
                    $this->credentials($request)
                );

                return $response == Password::RESET_LINK_SENT
                    ? $this->sendResetLinkResponse($request, $response)
                    : $this->sendResetLinkFailedResponse($request, $response);
            } else {
                if ($user->user_status == 'pending') {
                    $message = "Account verification and activation is pending with the system administrator. You will be notified using your registered email address when the status changes.";
                } else if ($user->user_status == 'disabled') {
                    $message = "This Account is Disabled – Contact your project Administrator";
                } else if ($user->user_status == 'deleted') {
                    $message = "Account Deleted";
                }
                return back()->withErrors('error')->withErrors(['field' => $message]);
            }
        } else {
            return back()->withErrors('error')->withErrors(['field' => $message]);
        }
    }
}
