<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGerbangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gerbang', function (Blueprint $table) {
            $table->id();
            $table->string('gerbang');
            $table->integer('golongan1');
            $table->integer('golongan2');
            $table->integer('golongan3');
            $table->integer('golongan4');
            $table->integer('golongan5');
            $table->string('image');
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
        Schema::dropIfExists('gerbang');
    }
}
