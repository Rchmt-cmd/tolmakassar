<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle2 }}</strong></h3>
    <h6>Periode {{ $currentMonthFullName }} {{ $currentYear }}</h6><br>
    
    {{-- dropdown --}}
    <div class="d-flex flex-row">
        <div class="dropdown mr-2">
            <button class="btn light dark border border-1 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                @if (Request::segment(2))
                {{ ucwords(strtolower(str_replace('-', ' ', Request::segment(2)))) }}
                @else
                {{ ucwords(strtolower($gate)) }}
                @endif
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                @foreach ($gateList as $gates)
                    <li><a class="dropdown-item" href="/{{ strtolower($company) }}-gerbang-harian/{{ strtolower($gates) }}">{{ str_replace('-', ' ', $gates) }}</a></li>
                @endforeach
                {{-- <li><a class="dropdown-item" href="/mmn-gerbang-harian/cambaya">Cambaya</a></li>
                <li><a class="dropdown-item" href="/mmn-gerbang-harian/parangloe">Parangloe</a></li>
                <li><a class="dropdown-item" href="/mmn-gerbang-harian/kaluku-bodoa">Kaluku Bodoa</a></li>
                <li><a class="dropdown-item" href="/mmn-gerbang-harian/tallo-timur">Tallo Timur</a></li>
                <li><a class="dropdown-item" href="/mmn-gerbang-harian/tallo-barat">Tallo Barat</a></li> --}}
            </ul>
        </div>
    </div>
    <div class="row align-items-center">
        {{-- header --}}
        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $graph2->container() !!}
        </div>
    
        {{-- description --}}
        <div class="col">
            <h6>LHR Gerbang Terkini</h6>
            <h1><strong>{{ $chart2->getLhrData($currentYear, $currentMonthNumber, $gate) }}</strong></h1>
            <br>
            <h6>{{ $currentMonth }} {{ $prevYear }}</h6>
            <div class="row">
                <h4 class="col"><strong>{{ $chart2->getLhrData($prevYear, $currentMonthNumber, $gate) }}</strong></h4>
                @if($chart2->getGrowth('year', $currentYear, $currentMonthNumber, $gate) <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ abs($chart2->getGrowth('year', $currentYear, $currentMonthNumber, $gate)) }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ abs($chart2->getGrowth('year', $currentYear, $currentMonthNumber, $gate)) }}%</span>
                @endif
            </div>

            <h6>{{ $prevMonth }} {{ $currentYear }}</h6>
            <div class="row">
                <h4 class="col"><strong>{{ $chart2->getLhrData($currentYear, $prevMonthNumber, $gate) }}</strong></h4>
                @if($chart2->getGrowth('month', $currentYear, $currentMonthNumber, $gate) <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ abs($chart2->getGrowth('month', $currentYear, $currentMonthNumber, $gate)) }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ abs($chart2->getGrowth('month', $currentYear, $currentMonthNumber, $gate)) }}%</span>
                @endif
            </div>
        </div>
    </div>
</div>

<script src="{{ $graph2->cdn() }}"></script>

{{ $graph2->script() }}