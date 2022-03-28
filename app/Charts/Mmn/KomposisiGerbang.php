<?php

namespace App\Charts\Mmn;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class KomposisiGerbang
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\DonutChart
    {
        return $this->chart->donutChart()
            ->setFontFamily('poppins')
            ->setColors(['#25507D', '#5A5CE6', '#54D352', '#A8E96F', '#716FE9', '#FF9D05'])
            ->addData([27.6, 27.0, 21.8, 9.1, 8.7, 5.9])
            ->setLabels(['Kaluku Bodoa', 'Parangloe', 'Cambaya', 'Tallo Timur', 'Parangloe Ramp', 'Tallo Barat']);
    }
}
