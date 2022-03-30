<?php

namespace App\Charts\Mmn;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class PerbandinganGolongan
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
            ->addData('2021', [25.2, 23.8, 25.2, 10.9, 4.9])
            ->addData('2022', [35.3, 27.0, 22.2, 9.7, 5.9])
            ->setXAxis(['Gol. I', 'Gol. II', 'Gol. III', 'Gol. IV', 'Gol. V']);
    }
}
