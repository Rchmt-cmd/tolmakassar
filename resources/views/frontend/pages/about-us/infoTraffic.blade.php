@extends('frontend.layouts.layout')


@section('content')

<br>
<div class="container p-0">

    {{-- Switch Pagination --}}
    <nav aria-label="MMN-JTSE">
        <ul class="pagination pagination-md justify-content-center">
            <li class="page-item active" aria-current="page">
                <span class="page-link">MMN</span>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">JTSE</a>
            </li>
        </ul>
    </nav>
    {{-- End Switch Pagination --}}

    <br>
    @include('frontend.pages.about-us.chart-section.section1')
    <br>
    @include('frontend.pages.about-us.chart-section.section2')
    <br>
    @include('frontend.pages.about-us.chart-section.section3')
    <br>
    @include('frontend.pages.about-us.chart-section.section4')
    <br>
    @include('frontend.pages.about-us.chart-section.section5')
</div>


@endsection