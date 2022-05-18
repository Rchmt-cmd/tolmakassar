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

class InfoTrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function mmn(LaluLintasHarian $chart, LaluLintasBulanan $chart3, LaluLintasHarianGerbang $chart2, KomposisiGerbang $chart4, KomposisiGolongan $chart5, TrafficHistory $chart6, PerbandinganGerbang $chart7, PerbandinganGolongan $chart8)
    {

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

    public function jtse(JtseLaluLintasHarian $chart, JtseLaluLintasHarianGerbang $chart2, JtseLaluLintasBulanan $chart3, JtseKomposisiGerbang $chart4, JtseKomposisiGolongan $chart5, JtseTrafficHistory $chart6, JtsePerbandinganGerbang $chart7, JtsePerbandinganGolongan $chart8)
    {
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

    // query dan perhitungan data traffic untuk disajikan ke grafik
    protected function getGraphData($switch = 'curr', $year, $month, $company = 'MMN')
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

        if ($switch == 'curr') {
            $a = array();
            for ($day = 1; $day <= ($countDay); $day++) {
                $graph = DB::table('info_traffic')
                ->where('company', $company)
                    ->whereDate('date', '=', $year . '-' . $month . '-' . $day)
                    ->sum('traffic');
                array_push($a, $graph);
            }
            return array_map('intval', $a);
        } elseif ($switch == 'prev') {
            $a = array();
            for ($day = 1; $day <= ($countDay); $day++) {
                $graph = DB::table('info_traffic')
                ->where('company', $company)
                    ->whereDate('date', date('Y-m-d', strtotime($year . '-' . $month . '-' . $day . ' -364 days')))
                    ->sum('traffic');
                array_push($a, $graph);
            }
            return array_map('intval', $a);
        }
    }

    // perhitungan data lhr traffic
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

    public function getGrowth($switch, $year, $month, $company = 'MMN')
    {
        $currLhr = $this->getLhrData($year, $month, $company);

        if ($switch == 'year') {
            $prevLhr = $this->getLhrData($year - 1, $month, $company);
        } elseif ($switch == 'month') {
            $prevLhr = $this->getLhrData($year, $month - 1, $company);
        }

        $growth = ($currLhr - $prevLhr) / $prevLhr * 100;



        return number_format($growth, 1, '.', '.');
    }



    public function test()
    {
        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => $this->getLhrData('2022', '03', 'MMN'),
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
