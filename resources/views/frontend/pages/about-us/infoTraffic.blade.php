@extends('frontend.layouts.layout')


@section('content')

<br>
<div class="container p-0">
    @if (request()->routeIS('mmn-harian') || request()->routeIS('jtse-harian'))

        @include('frontend.pages.about-us.chart-section.section1')

    @elseif (request()->routeIS('mmn-gerbang-harian') || request()->routeIS('jtse-gerbang-harian'))

        @include('frontend.pages.about-us.chart-section.section2')

    @elseif (request()->routeIS('mmn-bulanan') || request()->routeIS('jtse-bulanan'))
    
        @include('frontend.pages.about-us.chart-section.section3')
        
    @elseif (request()->routeIS('mmn-komposisi') || request()->routeIS('jtse-komposisi'))

         @include('frontend.pages.about-us.chart-section.section4')

    @elseif (request()->routeIS('mmn-traffic-history') || request()->routeIS('jtse-traffic-history'))

        @include('frontend.pages.about-us.chart-section.section5')

    @endif
</div>


@endsection