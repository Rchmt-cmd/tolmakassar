<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInfoTrafficsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('info_traffics', function (Blueprint $table) {
            $table->id()->autoIncrement()->primary();
            $table->date('date');
            $table->string('company')->nullable();
            $table->string('gate');
            $table->string('class');
            $table->integer('traffic');
            $table->string('source');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('info_traffics');
    }
}
