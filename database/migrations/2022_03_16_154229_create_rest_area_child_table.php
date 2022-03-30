<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestAreaChildTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rest_area_child', function (Blueprint $table) {
            $table->id();
            $table->integer('rest_area')->nullable();
            $table->string('nama')->nullable();
            $table->string('icon')->nullable();
            $table->string('nama_inggris')->nullable();
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
        Schema::dropIfExists('rest_area_child');
    }
}
