<?php

namespace App\Charts\Mmn;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class PerbandinganGerbang
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\HorizontalBar
    {
        return $this->chart->horizontalBarChart()
            ->setFontFamily('poppins')
            ->setColors(['#FFC469', '#25507D'])
            ->setHeight(300)
            ->setGrid()
            ->addData('2021', [27.0, 26.3, 22.2, 9.7, 9.0, 5.9])
            ->addData('2022', [27.6, 27.0, 21.8, 9.1, 8.7, 5.9])
            ->setXAxis(['Kaluku Bodoa', 'Parangloe', 'Cambaya', 'Tallo Timur', 'Parangloe Ramp', 'Tallo Barat']);
    }
}
