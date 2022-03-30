<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePrintInvoiceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('print_invoice', function (Blueprint $table) {
            $table->id();
            $table->string('gerbang');
            $table->string('gardu');
            $table->integer('no_kartu');
            $table->dateTime('tanggal_transaksi');
            $table->integer('golongan');
            $table->integer('tarif');
            $table->integer('sisa_saldo');
            $table->integer('call_center');
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
        Schema::dropIfExists('print_invoice');
    }
}
