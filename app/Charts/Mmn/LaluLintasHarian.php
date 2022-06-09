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

    // query dan perhitungan data traffic untuk disajikan ke grafik
    protected function getGraphData($switch = 'curr', $year, $month, $company = 'MMN')
    {
        if ($switch == 'curr') 
        {
            $date = DB::table('info_traffics')
            ->where('company', $company)
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->get()
            ->last();
            $countDay = date('d', strtotime($date->day));
            $a = array();
            for ($day = 1; $day <= ($countDay); $day++) {
                $graph = DB::table('info_traffics')
                    ->where('company', $company)
                    ->whereDate('date', date('Y-m-d', strtotime($year . '-' . $month . '-' . $day)))
                    ->sum('traffic');
                array_push($a, $graph);
            }
            return array_map('intval', $a);
        } elseif ($switch == 'prev') {
            $date = DB::table('info_traffics')
            ->where('company', $company)
            ->whereYear('date', $year-1)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->get()
            ->last();
            $countDay = date('d', strtotime($date->day));
            $a = array();
            for ($day = 1; $day <= ($countDay); $day++) {
                $graph = DB::table('info_traffics')
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
        $date = DB::table('info_traffics')
            ->where('company', $company)
            ->whereYear('date', $year)
            ->whereMonth('date', $month)
            ->select(DB::raw('date(date) as day'))
            ->groupBy('date')
            ->get()
            ->last();
        $countDay = date('d', strtotime($date->day));

        $traffic = DB::table('info_traffics')
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

    // SETTER
    public function build($year, $month): \ArielMejiaDev\LarapexCharts\LineChart
    {
        $lineChart = $this->chart->lineChart();
        return $lineChart
            ->addData( $year-1, $this->getGraphData('prev', $year, $month, 'MMN'))
            ->addData( $year, $this->getGraphData('curr',$year, $month, 'MMN'))
            ->setGrid()
            ->setFontFamily('poppins')
            ->setColors(['#FFC469', '#25507D'])
            ->setXAxis(['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']);
    }
}
