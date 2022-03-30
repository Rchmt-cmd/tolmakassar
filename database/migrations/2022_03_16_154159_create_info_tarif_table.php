<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInfoTarifTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('info_tarif', function (Blueprint $table) {
            $table->id();
            $table->string('gerbang');
            $table->string('ruas')->nullable();
            $table->integer('golongan1')->default('0');
            $table->integer('golongan2')->default('0');
            $table->integer('golongan3')->default('0');
            $table->integer('golongan4')->default('0');
            $table->integer('golongan5')->default('0');
            $table->integer('gol1_int')->nullable();
            $table->integer('gol2_int')->nullable();
            $table->integer('gol3_int')->nullable();
            $table->integer('gol4_int')->nullable();
            $table->integer('gol5_int')->nullable();
            $table->integer('total1')->nullable();
            $table->integer('total2')->nullable();
            $table->integer('total3')->nullable();
            $table->integer('total4')->nullable();
            $table->integer('total5')->nullable();
            $table->string('integrasi')->nullable();
            $table->string('total')->nullable();
            $table->string('image')->nullable();
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
        Schema::dropIfExists('info_tarif');
    }
}
