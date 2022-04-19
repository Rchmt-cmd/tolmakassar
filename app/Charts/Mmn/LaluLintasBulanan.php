<?php

namespace App\Charts\Mmn;

use Illuminate\Support\Facades\DB;
use ArielMejiaDev\LarapexCharts\LarapexChart;

class LaluLintasBulanan
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
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

    public function getLhrYtd()
    {
        $a = array();
        for ($month = 1; $month <= 12; $month++) {
            $lhr = $this->getLhrData($this->getCurrentTime('year'), $month);
            array_push($a, $lhr);
        }
        $traffic = array_sum($a);
        $ytd = $traffic / 12;
        return $ytd;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\BarChart
    {
        return $this->chart->barChart()
            ->setFontFamily('poppins')
            ->setColors(['#FFC469', '#25507D'])
            ->setGrid()
            ->addData('2021', $this->getGraphData('prev'))
            ->addData('2022', $this->getGraphData())
            ->setXAxis(['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Agt', 'Sep', 'Okt', 'Nov', 'Des']);
    }
}
