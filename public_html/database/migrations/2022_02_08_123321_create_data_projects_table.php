<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDataProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_projects', function (Blueprint $table) {
            $table->id();
            $table->dateTime('system_datetime_of_last_change');
            $table->string('app_project_name');
            $table->string('project_status');
            $table->string('app_menu_id');
            $table->foreign('cust_id')->references('id')->on('portal_customer_table');
            $table->string('cust_name_prefix');
            $table->string('internal_project_short_name');
            $table->string('internal_project_long_name');
            $table->date('project_planned_start');
            $table->date('project_planned_end');
            $table->string('client_project_short_name');
            $table->string('client_project_long_name');
            $table->string('client_project_description');
            $table->string('client_company_name');
            $table->string('client_contact_name');
            $table->string('client_contact_phone');
            $table->string('client_contact_email');
            $table->string('internal_project_owner');
            $table->string('internal_project_owner_phone');
            $table->string('internal_project_owner_email');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('data_projects');
    }
}
