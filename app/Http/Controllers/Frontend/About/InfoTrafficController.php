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
            'chart4' => $chart4->build(),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart5' => $chart5->build(),
            'chartTitle5' => 'Komposisi Golongan',

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

        // return $queryDate->date;
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

    public function getLhrData($year, $month, $company = 'MMN')
    {
        $date = DB::table('info_traffic')
        ->where('company', $company)
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->get()
            ->last();
        $countDay = date('d', strtotime($date->day));

        $traffic = DB::table('info_traffic')
        ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->where('company', $company)
            ->sum('traffic');
        $mean = $traffic / ($countDay);

        return number_format(round($mean), 0, '.', '.');
    }

    protected function getGraphData($switch = 'curr')
    {
        if ($switch == 'curr') {
            $a = array();
            for ($month = 1; $month <= 12; $month++) {
                $graph = $this->getLhrData($this->getCurrentTime('year'), $month);
                array_push($a, $graph);
            }
            return $a;
        } elseif ($switch == 'prev') {
            $a = array();
            for ($month = 1; $month <= 12; $month++) {
                $graph = $this->getLhrData($this->getPrevTime('year'), $month);
                array_push($a, $graph);
            }
            return $a;
        }
    }

    public function getLhrYtd($switch = 'curr')
    {
        if ($switch == 'curr') {
            $a = array();
            for ($month = 1; $month <= $this->getCurrentTime('monthnumber'); $month++) {
                $graph = $this->getLhrData($this->getCurrentTime('year'), $month);
                array_push($a, $graph);
            }
            $a = array_sum($a);
            $ytd = $a / $this->getCurrentTime('monthnumber');
            return $ytd;
        } elseif ($switch == 'prev') {
            $a = array();
            for ($month = 1; $month <= 12; $month++) {
                $graph = $this->getLhrData($this->getPrevTime('year'), $month);
                array_push($a, $graph);
            }
            $a = array_sum($a);
            $ytd = $a / 12;
            return $a;
        }
    }

    public function test()
    {
        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => $this->getLhrYtd('prev')
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
