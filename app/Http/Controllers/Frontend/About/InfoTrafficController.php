<?php

namespace App\Http\Controllers\Frontend\About;

use App\Charts\Mmn\KomposisiGerbang;
use App\Charts\Mmn\KomposisiGolongan;
use App\Charts\Mmn\LaluLintasBulanan;
use App\Charts\Mmn\LaluLintasHarian;
use App\Charts\Mmn\LaluLintasHarianGerbang;
use App\Charts\Mmn\TrafficHistory;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class InfoTrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(LaluLintasHarian $chart, LaluLintasBulanan $chart3, LaluLintasHarianGerbang $chart2, KomposisiGerbang $chart4, KomposisiGolongan $chart5, TrafficHistory $chart6)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            'chart' => $chart->build(),
            'chart2' => $chart2->build(),
            'chart3' => $chart3->build(),
            'chart4' => $chart4->build(),
            'chart5' => $chart5->build(),
            'chart6' => $chart6->build(),
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
