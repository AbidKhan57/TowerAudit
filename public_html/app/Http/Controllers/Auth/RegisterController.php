<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Notifications\NewUser;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = 'approval';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('throttle:2,5');
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'max:12', 'confirmed'],
            'first_name' => ['required', 'string'],
            'last_name' => ['required', 'string'],
            'mobile_no' => ['required', 'numeric'],
            'requested_role' => ['required'],
            'company_name' => ['required', 'string'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['first_name'] . ' ' . $data['last_name'],
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name'],
            'mobile_no' => $data['mobile_no'],
            'requested_role' => $data['requested_role'],
            'company_name' => $data['company_name'],
            'user_status' => 'pending',
            'user_belongs_to_cust_id' => 0,
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        $admin = User::where('email', 'registration@SecureSiteAudit.com')->first();
        if (!$admin) {
            $admin =  User::create([
                'first_name' => 'SecureSiteAudit',
                'last_name' => 'SecureSiteAudit',
                'name' => 'SecureSiteAudit',
                'mobile_no' => '0300000',
                'email' => 'registration@SecureSiteAudit.com',
                'password' => '$2y$10$378.p/Nub11jB4MmikzR3uVmmCmUnHLFQlMIjrNLQrhAUJsPPKO2K',
                'requested_role' => 'project_administrator',
                'user_status' => 'active',
                'company_name' => 'MyTest',
                'user_belongs_to_cust_id' => 0,
                'granted_user_type' => 'admin',
                'granted_user_role' => 'Sys-Admin',
            ]);
        }
        $admin->notify(new NewUser($user));
        return $user;
    }
}
