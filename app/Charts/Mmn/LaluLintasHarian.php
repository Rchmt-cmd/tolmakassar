<?php

namespace App\Charts\Mmn;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class LaluLintasHarian
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\LineChart
    {
        return $this->chart->lineChart()
            ->addData('2021', [45100, 45400, 45500, 47000, 46500, 30300, 47400, 45400, 48900, 31500, 47900, 47400, 34000, 51200, 48100, 48100, 48600, 57800, 61100, 47100,56500, 53600, 53200, 52700, 55300, 54300, 40300, 53200, 56100, 57900, 55000])
            ->addData('2022', [49900, 52800, 36200, 54500, 51700, 38600])
            ->setFontFamily('poppins')
            ->setColors(['#FFC469', '#25507D'])
            ->setXAxis(['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']);
    }
}
