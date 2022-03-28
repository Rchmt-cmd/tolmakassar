<?php

namespace App\Charts\Mmn;

use ArielMejiaDev\LarapexCharts\LarapexChart;

class KomposisiGolongan
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
            ->setColors(['#25507D', '#5A5CE6', '#54D352', '#A8E96F', '#FF9D05'])
            ->setHeight(320)
            ->addData([85.4, 7.3, 5.2, 1.8, 0.21])
            ->setLabels(['Gol. I', 'Gol. II', 'Gol. III', 'Gol. IV', 'Gol. V']);
    }
}
