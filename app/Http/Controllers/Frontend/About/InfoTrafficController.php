<?php

namespace App\Http\Controllers\Frontend\About;

use Illuminate\Http\Request;
use App\Charts\Mmn\TrafficHistory;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;
use App\Charts\Mmn\KomposisiGerbang;
use App\Charts\Mmn\LaluLintasHarian;
use App\Charts\Mmn\KomposisiGolongan;
use App\Charts\Mmn\LaluLintasBulanan;
use App\Charts\Mmn\PerbandinganGerbang;
use App\Charts\Mmn\PerbandinganGolongan;
use App\Charts\Mmn\LaluLintasHarianGerbang;

class InfoTrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(LaluLintasHarian $chart, LaluLintasBulanan $chart3, LaluLintasHarianGerbang $chart2, KomposisiGerbang $chart4, KomposisiGolongan $chart5, TrafficHistory $chart6, PerbandinganGerbang $chart7, PerbandinganGolongan $chart8)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            'chart' => $chart->build(),
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'lhrTerkini' => $chart,
            'lhrPrev' => $chart,
            'chart2' => $chart2->build(),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart3' => $chart3->build(),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart4' => $chart4->build(),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart5' => $chart5->build(),
            'chartTitle5' => 'Komposisi Golongan',
            'chart6' => $chart6->build(),
            'chartTitle6' => 'Traffic History',
            'chart7' => $chart7->build(),
            'chartTitle7' => 'Perbandingan Gerbang',
            'chart8' => $chart8->build(),
            'chartTitle8' => 'Perbandingan Gerbang',
        ]);
    }

    public function test()
    {
        $countDay = LaluLintasHarian::getCurrentTime('day');

        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => $countDay,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
