<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePortalAuditCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('portal_audit_companies', function (Blueprint $table) {
            $table->id();
            $table->integer('cust_id');
            $table->integer('id_project');
            $table->string('supplier_name_prefix');
            $table->string('supplier_name_full');
            $table->string('address_region');
            $table->string('address_country');
            $table->string('address_zip');
            $table->string('address_area');
            $table->string('address_city');
            $table->string('address_1');
            $table->string('address_2');
            $table->string('address_3');
            $table->string('phone_main');
            $table->string('contact_name');
            $table->string('contact_position');
            $table->string('contact_mobile');
            $table->string('contact_email');
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
        Schema::dropIfExists('portal_audit_companies');
    }
}
