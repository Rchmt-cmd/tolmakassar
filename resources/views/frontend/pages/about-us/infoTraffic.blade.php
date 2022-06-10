@extends('frontend.layouts.layout')


@section('content')

<br>
<div class="container p-0">
    @if (route('mmn-harian') || route('jtse-harian'))
        @include('frontend.pages.about-us.chart-section.section1')
    @elseif (route('mmn-bulanan') || route('jtse-bulanan'))
        @include('frontend.pages.about-us.chart-section.section2')
    @elseif (route('mmn-gerbang-harian') || route('jtse-gerbang-harian'))
        @include('frontend.pages.about-us.chart-section.section3')
    @elseif (route('mmn-komposisi') || route('jtse-komposisi'))
         @include('frontend.pages.about-us.chart-section.section4')
    @elseif (route('mmn-traffic-history') || route('jtse-traffic-history'))
        @include('frontend.pages.about-us.chart-section.section5')
    @endif
</div>


@endsection