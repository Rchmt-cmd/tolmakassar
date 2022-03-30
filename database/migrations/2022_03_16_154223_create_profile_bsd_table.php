<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfileBsdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profile_bsd', function (Blueprint $table) {
            $table->id();
            $table->string('judul')->nullable();
            $table->string('image')->nullable();
            $table->longText('konten')->nullable();
            $table->string('bidang_usaha')->nullable();
            $table->timestamps();
            $table->string('struktur')->nullable();
            $table->longText('sejarah')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profile_bsd');
    }
}
