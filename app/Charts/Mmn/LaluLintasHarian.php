<?php

namespace App\Charts\Mmn;

use Illuminate\Support\Facades\DB;
use ArielMejiaDev\LarapexCharts\LarapexChart;

class LaluLintasHarian
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    // GETTER

    // tambahkan properti untuk memberi nilai default tahun, bulan dan perusahaan
    public static function getCurrentTime($scope)
    {
        $currentDate = DB::table('info_traffic')
                ->select(DB::raw($scope . '(date) as '.$scope))
                ->groupBy('date')
                ->get('date')
                ->last();

        return $currentDate;
    }

    
    // query dan perhitungan data traffic untuk disajikan ke grafik
    public static function getGraphData($year, $month, $company) //jumlah perulangan dan bulan masih statis
    {
        $countDay = DB::table('info_traffic')
            ->where('company', $company)
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->count();

        $a = array();
        for ($day=1; $day <= ($countDay+1) ; $day++) { 
            $graph = DB::table('info_traffic')
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->whereDay('date', $day)
            ->where('company',$company)
            ->sum('traffic');
            array_push($a, $graph);
        }

        return array_map('intval', $a);
    }

    // perhitungan data lhr traffic
    public function getLhrData($year, $month, $company) //pembagian dengan jumlah hari masih statis,dan butuh parameter fungsi agar inputan lebih dinamis
    {
        $countDay = DB::table('info_traffic')
            ->where('company', $company)
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->count();

        $traffic = DB::table('info_traffic')
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->where('company',$company)
            ->sum('traffic');
        $mean = $traffic / ($countDay+1);

        return number_format(round($mean), 0, '.', '.');

    }

    public function getGrowth()
    {

    }

    // SETTER
    public function build(): \ArielMejiaDev\LarapexCharts\LineChart
    {
        return $this->chart->lineChart()
            ->addData('2021', $this->getGraphData('2021','03', 'MMN'))
            ->addData('2022', $this->getGraphData('2022','03', 'MMN'))
            ->setFontFamily('poppins')
            ->setColors(['#FFC469', '#25507D'])
            ->setXAxis(['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']);
    }
}
