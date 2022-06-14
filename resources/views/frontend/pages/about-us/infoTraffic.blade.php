@extends('frontend.layouts.layout')


@section('content')

<br>
<div class="container p-0">
    @include('frontend.pages.about-us.chart-section.section1')
    @include('frontend.pages.about-us.chart-section.section2')
    @include('frontend.pages.about-us.chart-section.section3')
    @include('frontend.pages.about-us.chart-section.section4')
    @include('frontend.pages.about-us.chart-section.section5')
</div>


@endsection