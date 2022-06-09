<?php

namespace App\Http\Controllers\Frontend\About;

use App\Charts\Jtse\KomposisiGerbang as JtseKomposisiGerbang;
use App\Charts\Jtse\KomposisiGolongan as JtseKomposisiGolongan;
use App\Charts\Jtse\LaluLintasBulanan as JtseLaluLintasBulanan;
use App\Charts\Jtse\LaluLintasHarian as JtseLaluLintasHarian;
use App\Charts\Jtse\LaluLintasHarianGerbang as JtseLaluLintasHarianGerbang;
use App\Charts\Jtse\PerbandinganGerbang as JtsePerbandinganGerbang;
use App\Charts\Jtse\PerbandinganGolongan as JtsePerbandinganGolongan;
use App\Charts\Jtse\TrafficHistory as JtseTrafficHistory;
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
use App\Models\info_traffic;

class InfoTrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function mmn(LaluLintasHarian $chart, LaluLintasBulanan $chart3, LaluLintasHarianGerbang $chart2, KomposisiGerbang $chart4, KomposisiGolongan $chart5, TrafficHistory $chart6, PerbandinganGerbang $chart7, PerbandinganGolongan $chart8, info_traffic $info_traffic)
    {
        $lastDate = $info_traffic->queryLastDate();
        $currentYear = $info_traffic->getCurrentTime('year', $lastDate);
        $currentMonthNumber = $info_traffic->getCurrentTime('monthnumber', $lastDate);
        $currentMonthFullName = $info_traffic->getCurrentTime('monthfullname', $lastDate);
        $currentMonth = $info_traffic->getCurrentTime('month', $lastDate);

        $prevYear = $info_traffic->getPrevTime('year', $lastDate);
        $prevMonthNumber = $info_traffic->getPrevTime('monthnumber', $lastDate);
        $prevMonthFullName = $info_traffic->getPrevTime('monthfullname', $lastDate);
        $prevMonth = $info_traffic->getPrevTime('month', $lastDate);

        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            'currentYear' => $currentYear,
            'currentMonthNumber' => $currentMonthNumber,
            'currentMonthFullName' => $currentMonthFullName,
            'currentMonth' => $currentMonth,
            'prevYear' => $prevYear,
            'prevMonthNumber' => $prevMonthNumber,
            'prevMonthFullName' => $prevMonthFullName,
            'prevMonth' => $prevMonth,

            // section 1
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'chart' => $chart,

            // section2
            'graph2' => $chart2->build($currentYear, $currentMonthNumber),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart2' => $chart2,

            // section3
            'graph3' => $chart3->build($currentYear),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart3' => $chart3,

            // section4
            'graph4' => $chart4->build($currentYear, $currentMonthNumber),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart4' => $chart4,
            'graph5' => $chart5->build($currentYear, $currentMonthNumber),
            'chartTitle5' => 'Komposisi Golongan',
            'chart5' => $chart5,

            // section5
            'chart6' => $chart6->build(),
            'chartTitle6' => 'Traffic History',

            // section4.1
            'chart7' => $chart7->build($currentYear, $currentMonthNumber),
            'chartTitle7' => 'Perbandingan Gerbang',
            'chart8' => $chart8->build($currentYear, $currentMonthNumber),
            'chartTitle8' => 'Perbandingan Gerbang',
        ]);
    }

    public function jtse(JtseLaluLintasHarian $chart, JtseLaluLintasHarianGerbang $chart2, JtseLaluLintasBulanan $chart3, JtseKomposisiGerbang $chart4, JtseKomposisiGolongan $chart5, JtseTrafficHistory $chart6, JtsePerbandinganGerbang $chart7, JtsePerbandinganGolongan $chart8, info_traffic $info_traffic)
    {
        $lastDate = $info_traffic->queryLastDate();
        $currentYear = $info_traffic->getCurrentTime('year', $lastDate);
        $currentMonthNumber = $info_traffic->getCurrentTime('monthnumber', $lastDate);
        $currentMonthFullName = $info_traffic->getCurrentTime('monthfullname', $lastDate);
        $currentMonth = $info_traffic->getCurrentTime('month', $lastDate);

        $prevYear = $info_traffic->getPrevTime('year', $lastDate);
        $prevMonthNumber = $info_traffic->getPrevTime('monthnumber', $lastDate);
        $prevMonthFullName = $info_traffic->getPrevTime('monthfullname', $lastDate);
        $prevMonth = $info_traffic->getPrevTime('month', $lastDate);

        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            // section 1
            'graph' => $chart->build(),
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'chart' => $chart,

            // section2
            'graph2' => $chart2->build(),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart2' => $chart2,

            // section3
            'graph3' => $chart3->build(),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart3' => $chart3,

            // section4
            'graph4' => $chart4->build(),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart4' => $chart4,
            'graph5' => $chart5->build(),
            'chartTitle5' => 'Komposisi Golongan',
            'chart5' => $chart5,

            // section5
            'chart6' => $chart6->build(),
            'chartTitle6' => 'Traffic History',

            // section4.1
            'chart7' => $chart7->build(),
            'chartTitle7' => 'Perbandingan Gerbang',
            'chart8' => $chart8->build(),
            'chartTitle8' => 'Perbandingan Gerbang',
        ]);
    }

    public function test()
    {
        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => 'test',
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
