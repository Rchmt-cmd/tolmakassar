<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCallCenterChildTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('call_center_child', function (Blueprint $table) {
            $table->id();
            $table->string('foto')->nullable();
            $table->string('title')->nullable();
            $table->string('nomor')->nullable();
            $table->string('deskripsi')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverpse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('call_center_child');
    }
}
