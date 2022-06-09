<span id="graph">
@php
    $graph = $chart->build($currentYear, $currentMonthNumber);
    $growthYear = $chart->getGrowth('year', $currentYear, $currentMonthNumber);
    $growthMonth = $chart->getGrowth('month', $currentYear, $currentMonthNumber);
@endphp
</span>
<div class="bg-white rounded shadow p-4">
    {{-- header --}}
    <h3><strong>{{ $chartTitle }}</strong></h3>
    <h6 id="subtitle">Periode {{ $currentMonthFullname }} {{ $currentYear }}</h6><br>
    {{-- end header --}}

    {{-- dropdown --}}
    <div class="dropdown">
        <button class="btn light dark border border-1 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Scope
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" onclick="getData('2022', '02')">Januari</a></li>
            <li><a class="dropdown-item">Februari</a></li>
            <li><a class="dropdown-item">Maret</a></li>
        </ul>
    </div>
    {{-- end dropdown --}}

    <div class="row align-items-center">        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $graph->container() !!}
        </div>
        {{-- end chart --}}
    
        {{-- description --}}
        <div class="col">
            {{-- LHR Terkini --}}
            <h6>LHR Terkini</h6>
            <h1><strong id="lhr-terkini">{{ $chart->getLhrData($currentYear, $currentMonthNumber) }}</strong></h1>
            <br>
            {{-- end LHR Terkini --}}


            {{-- LHR Last Year --}}
            <h6 id="lhr-last-year-title">{{ $currentMonth }} {{ $prevYear }}</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong id="lhr-last-year">{{ $chart->getLhrData($prevYear, $currentMonthNumber) }}</strong></h4>
                @if( $growthYear <= 0)
                    <span id="growth" class="col p-0 text-danger">    &#9660; {{ abs($growthYear) }}%</span>  
                @else
                    <span id="growth" class="col p-0 text-success">    &#9650; {{ abs($growthYear) }}%</span>
                @endif
            </div>
            {{-- end LHR last year --}}


            {{-- Lhr last month --}}
            <h6 id="lhr-last-month-title">{{ $prevMonth }} {{ $currentYear }}</h6>
            <div class="row">
                <h4 class="col-7"><strong id="lhr-last-month">{{ $chart->getLhrData($currentYear, $prevMonthNumber) }}</strong></h4>
                @if( $growthMonth <= 0)
                    <span id="growth" class="col p-0 text-danger">    &#9660; {{ abs($growthMonth) }}%</span>  
                @else
                    <span id="growth" class="col p-0 text-success">    &#9650; {{ abs($growthMonth) }}%</span>
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