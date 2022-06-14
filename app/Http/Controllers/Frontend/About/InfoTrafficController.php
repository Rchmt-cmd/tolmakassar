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
use PhpOffice\PhpSpreadsheet\Calculation\MathTrig\Sum;

class InfoTrafficController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    protected $lastDate;
    protected $currentYear;
    protected $currentMonth;
    protected $currentMonthNumber;
    protected $currentMonthFullName;
    protected $prevYear;
    protected $prevMonth;
    protected $prevMonthNumber;
    protected $prevMonthFullName;


    public function __construct(info_traffic $info_traffic)
    {
        $this->lastDate = $info_traffic->queryLastDate();
        $this->currentYear = $info_traffic->getCurrentTime('year', $this->lastDate);
        $this->currentMonthNumber = $info_traffic->getCurrentTime('monthnumber', $this->lastDate);
        $this->currentMonthFullName = $info_traffic->getCurrentTime('monthfullname', $this->lastDate);
        $this->currentMonth = $info_traffic->getCurrentTime('month', $this->lastDate);

        $this->prevYear = $info_traffic->getPrevTime('year', $this->lastDate);
        $this->prevMonthNumber = $info_traffic->getPrevTime('monthnumber', $this->lastDate);
        $this->prevMonthFullName = $info_traffic->getPrevTime('monthfullname', $this->lastDate);
        $this->prevMonth = $info_traffic->getPrevTime('month', $this->lastDate);
    }
    public function mmn(LaluLintasHarian $chart, LaluLintasBulanan $chart3, LaluLintasHarianGerbang $chart2, KomposisiGerbang $chart4, KomposisiGolongan $chart5, TrafficHistory $chart6, PerbandinganGerbang $chart7, PerbandinganGolongan $chart8, info_traffic $info_traffic)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,

            // section 1
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'graph' => $chart->build($this->currentYear, $this->currentMonthNumber),
            'chart' => $chart,

            // section2
            'graph2' => $chart2->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart2' => $chart2,

            // section3
            'graph3' => $chart3->build($this->currentYear),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart3' => $chart3,

            // section4
            'graph4' => $chart4->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart4' => $chart4,
            'graph5' => $chart5->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle5' => 'Komposisi Golongan',
            'chart5' => $chart5,

            // section5
            'chart6' => $chart6->build(),
            'chartTitle6' => 'Traffic History',

            // section4.1
            'chart7' => $chart7->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle7' => 'Perbandingan Gerbang',
            'chart8' => $chart8->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle8' => 'Perbandingan Gerbang',
        ]);
    }

    public function jtse(JtseLaluLintasHarian $chart, JtseLaluLintasHarianGerbang $chart2, JtseLaluLintasBulanan $chart3, JtseKomposisiGerbang $chart4, JtseKomposisiGolongan $chart5, JtseTrafficHistory $chart6, JtsePerbandinganGerbang $chart7, JtsePerbandinganGolongan $chart8, info_traffic $info_traffic)
    {

        return view('frontend.pages.about-us.infoTraffic', [
            'title' => 'Info Traffic',
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,

            'title' => 'Info Traffic',
            // section 1
            'graph' => $chart->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'chart' => $chart,

            // section2
            'graph2' => $chart2->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart2' => $chart2,

            // section3
            'graph3' => $chart3->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart3' => $chart3,

            // section4
            'graph4' => $chart4->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart4' => $chart4,
            'graph5' => $chart5->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle5' => 'Komposisi Golongan',
            'chart5' => $chart5,

            // section5
            'chart6' => $chart6->build(),
            'chartTitle6' => 'Traffic History',

            // section4.1
            'chart7' => $chart7->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle7' => 'Perbandingan Gerbang',
            'chart8' => $chart8->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle8' => 'Perbandingan Gerbang',
        ]);
    }

    public function mmnHarian(LaluLintasHarian $chart)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            // section 1
            'title' => 'Info Traffic',
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,
            'chartTitle' => 'Laporan Lalu Lintas Harian',
            'chart' => $chart,
            'graph' => $chart->build($this->currentYear, $this->currentMonthNumber)
        ]);
    }

    public function mmnGerbang(LaluLintasHarianGerbang $chart)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            // section 2
            'title' => 'Info Traffic',
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,
            'graph2' => $chart->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle2' => 'Laporan Lalu Lintas Harian Per Gerbang',
            'chart2' => $chart,
        ]);
    }

    public function mmnBulanan(LaluLintasBulanan $chart)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            // section 3
            'title' => 'Info Traffic',
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,  
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,
            'graph3' => $chart->build($this->currentYear),
            'chartTitle3' => 'Laporan Lalu Lintas Bulanan',
            'chart3' => $chart,
        ]);
    }

    public function mmnKomposisi(KomposisiGerbang $chart1, KomposisiGolongan $chart2)
    {
        return view('frontend.pages.about-us.infoTraffic', [
            // section 3
            'currentYear' => $this->currentYear,
            'currentMonthNumber' => $this->currentMonthNumber,
            'currentMonthFullName' => $this->currentMonthFullName,
            'currentMonth' => $this->currentMonth,
            'prevYear' => $this->prevYear,
            'prevMonthNumber' => $this->prevMonthNumber,
            'prevMonthFullName' => $this->prevMonthFullName,
            'prevMonth' => $this->prevMonth,
            'graph4' => $chart1->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle4' => 'Komposisi Gerbang',
            'chart4' => $chart1,
            'graph5' => $chart2->build($this->currentYear, $this->currentMonthNumber),
            'chartTitle5' => 'Komposisi Golongan',
            'chart5' => $chart2,
        ]);
    }


    public function test()
    {
        $graph = DB::table('info_traffics')
        ->select(DB::raw('company,gate, `date`, SUM(traffic) as traffic'))
        ->where('company', 'MMN')
            ->where('gate', 'KALUKU BODOA')
            ->whereYear('date', '2022')
            ->whereMonth('date', '05')
            ->groupBy('date', 'gate', 'company')
            ->get()
            ->toArray();
        $a = array();
        foreach ($graph as $key => $value) {
            $data = $graph[$key]->traffic;
            array_push($a, $data);
        }
        return view('frontend.pages.about-us.test', [
            'title' => 'Info Traffic',
            'test' => $a,
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
