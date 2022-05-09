<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle2 }}</strong></h3>
    <h6>Periode {{ $chart2->getCurrentTime('monthfullname') }} {{ $chart2->getCurrentTime('year') }}</h6><br>
    
    {{-- dropdown --}}
    <div class="dropdown">
        <button class="btn light dark border border-1 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Scope
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="">Cambayya</a></li>
            <li><a class="dropdown-item" href="">Parangloe</a></li>
            <li><a class="dropdown-item" href="">Kaluku Bodoa</a></li>
            <li><a class="dropdown-item" href="">Tallo Timur</a></li>
            <li><a class="dropdown-item" href="">Tallo Barat</a></li>
        </ul>
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
            <h1><strong>{{ $chart2->getLhrData($chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) }}</strong></h1>
            <br>
            <h6>{{ $chart2->getCurrentTime('month') }} {{ $chart2->getPrevTime('year') }}</h6>
            <div class="row">
                <h4 class="col"><strong>{{ $chart2->getLhrData($chart2->getPrevTime('year'), $chart2->getCurrentTime('monthnumber')) }}</strong></h4>
                @if($chart2->getGrowth('year', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ $chart2->getGrowth('year', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ $chart2->getGrowth('year', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) }}%</span>
                @endif
            </div>

            <h6>{{ $chart2->getPrevTime('month') }} {{ $chart2->getCurrentTime('year') }}</h6>
            <div class="row">
                <h4 class="col"><strong>{{ $chart2->getLhrData($chart2->getCurrentTime('year'), $chart2->getPrevTime('monthnumber')) }}</strong></h4>
                @if($chart2->getGrowth('month', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ $chart2->getGrowth('month', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ $chart2->getGrowth('month', $chart2->getCurrentTime('year'), $chart2->getCurrentTime('monthnumber')) }}%</span>
                @endif
            </div>
        </div>
    </div>
</div>

<script src="{{ $graph2->cdn() }}"></script>

{{ $graph2->script() }}