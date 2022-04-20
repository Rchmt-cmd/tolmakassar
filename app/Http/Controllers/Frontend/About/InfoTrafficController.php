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
            // section 1
            'graph' => $chart->build(),
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'chart' => $chart,

            // section2
            'chart2' => $chart2->build(),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',

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

    public static function getCurrentTime($scope)
    {
        $queryDate = DB::table('info_traffic')
        ->select(DB::raw('date(date) as date'))
        ->groupBy('date')
        ->get('date')
        ->last();
        if ($scope == 'year') {
            return date('Y', strtotime($queryDate->date));
        } elseif ($scope == 'month') {
            return date('M', strtotime($queryDate->date));
        } elseif ($scope == 'monthfullname') {
            return date('F', strtotime($queryDate->date));
        } elseif ($scope == 'monthnumber') {
            return date('m', strtotime($queryDate->date));
        }
    }

    public function getPrevTime($scope)
    {
        $queryDate = DB::table('info_traffic')
        ->select(DB::raw('date(date) as date'))
        ->groupBy('date')
        ->get('date')
        ->last();
        if ($scope == 'year') {
            return date('Y', strtotime($queryDate->date . ' -1 year'));
        } elseif ($scope == 'month') {
            return date('M', strtotime($queryDate->date . 'first day of last month'));
        } elseif ($scope == 'monthfullname') {
            return date('F', strtotime($queryDate->date . 'first day of last month'));
        } elseif ($scope == 'monthnumber') {
            return date('m', strtotime($queryDate->date . 'first day of last month'));
        }
    }

    public function getGraphData($switch, $time = 'curr')
    {
        if ($time == 'curr') {
            $data = DB::table('info_traffic')
            ->where('company', 'MMN')
                ->whereYear('date', self::getCurrentTime('year'))
                ->whereMonth('date', self::getCurrentTime('monthnumber'))
                ->select(DB::raw('gate as gate, sum(traffic) as traffic'))
                ->groupBy('gate')
                ->get()
                ->toArray();
        } elseif ($time == 'prev') {
            $data = DB::table('info_traffic')
            ->where('company', 'MMN')
                ->whereYear('date', self::getPrevTime('year'))
                ->whereMonth('date', self::getPrevTime('monthnumber'))
                ->select(DB::raw('gate as gate, sum(traffic) as traffic'))
                ->groupBy('gate')
                ->get()
                ->toArray();
        }

        if ($switch == 'traffic') {
            $traffic = array();
            foreach ($data as $d) {
                array_push($traffic, $d->traffic);
            }
            return $traffic;
        } elseif ($switch == 'gate') {
            $gate = array();
            foreach ($data as $d) {
                array_push($gate, $d->gate);
            }
            return $gate;
        }
    }

    public function test()
    {
        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => $this->getGraphData('traffic'),
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
