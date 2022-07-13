<style>
    @media only screen and (max-width: 767px) {
        /* For tablets: */
    /* .scr-phone {display: inline;} */
    .traffic-phone{width: 650px;}
    }
</style>

<div class="bg-white rounded shadow p-4">
    {{-- header --}}
    <h3><strong>{{ $chartTitle }}</strong></h3>
    <h6 id="subtitle">Periode {{ $currentMonthFullName }} {{ $currentYear }}</h6><br>
    {{-- end header --}}

    {{-- dropdown --}}
    <div class="d-flex flex-row">
        <div class="dropdown">
            <button class="btn light dark border border-1 dropdown-toggle" type="button" id="dropdownMenuButton1"
                data-bs-toggle="dropdown" aria-expanded="false">
                @if (Request::segment(2))
                {{ date('F', mktime(0, 0, 0, Request::segment(2))) }}
                @else
                {{ $currentMonthFullName }}
                @endif
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                @foreach ($listMonth as $month)
                <li>
                    <a class="dropdown-item" href="/{{ strtolower($company) }}-harian/{{ $month->bulan }}">{{
                        $month->nama_bulan }}</a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    {{-- end dropdown --}}

    <div class="row align-items-center">
        {{-- chart --}}
        <div class="container align-items-center" align="center" style="overflow: auto; white-space: nowrap;">
            <div class="align-items-center traffic-phone col-10">
            {!! $graph->container() !!}
        </div>
        </div>
        {{-- end chart --}}

        {{-- description --}}
        <div class="col">
            {{-- LHR Terkini --}}
            <h6>LHR Terkini</h6>
            <h1><strong id="lhr-terkini">{{ $chart->getLhrData(date('Y', strtotime($currentdate)), date('m',
                    strtotime($currentdate))) }}</strong></h1>
            <br>
            {{-- end LHR Terkini --}}


            {{-- LHR Last Year --}}
            <h6 id="lhr-last-year-title">{{ str_replace('-', ' ', date('M-Y', strtotime($currentYear . '-' .
                $currentMonthNumber . '-' . '01' . '-1 year'))) }}</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong id="lhr-last-year">{{ $chart->getLhrData(date('Y', strtotime($lastyear)),
                        date('m', strtotime($lastyear))) }}</strong></h4>
                @if( $chart->getGrowth('year', $currentYear, $currentMonthNumber) <= 0) <span id="growth"
                    class="col p-0 text-danger"> &#9660; {{ abs($chart->getGrowth('year', $currentYear,
                    $currentMonthNumber)) }}%</span>
                    @else
                    <span id="growth" class="col p-0 text-success"> &#9650; {{ abs($chart->getGrowth('year',
                        $currentYear, $currentMonthNumber)) }}%</span>
                    @endif
            </div>
            {{-- end LHR last year --}}


            {{-- Lhr last month --}}
            <h6 id="lhr-last-month-title">{{ str_replace('-', ' ', date('M-Y', strtotime($currentYear . '-' .
                $currentMonthNumber . '-' . '01' . '-1 month'))) }}</h6>
            <div class="row">
                <h4 class="col-7"><strong id="lhr-last-month">{{ $chart->getLhrData(date('Y', strtotime($lastmonth)),
                        date('m', strtotime($lastmonth))) }}</strong></h4>
                @if( $chart->getGrowth('month', $currentYear, $currentMonthNumber) <= 0) <span id="growth"
                    class="col p-0 text-danger"> &#9660; {{ abs($chart->getGrowth('month', $currentYear,
                    $currentMonthNumber)) }}%</span>
                    @else
                    <span id="growth" class="col p-0 text-success"> &#9650; {{ abs($chart->getGrowth('month',
                        $currentYear, $currentMonthNumber)) }}%</span>
                    @endif
            </div>
            {{-- end LHR last month --}}

        </div>
        {{-- end description --}}

    </div>
</div>

{{-- Function --}}
<script src="{{ $graph->cdn() }}"></script>
{{-- end function --}}

{{ $graph->script() }}