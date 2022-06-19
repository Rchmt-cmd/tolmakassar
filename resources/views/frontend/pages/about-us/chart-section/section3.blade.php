<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle3 }}</strong></h3>
    <h6>Update {{ $currentMonthFullName }} {{ $currentYear }}</h6><br>
    
    <div class="row align-items-center">
        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $graph3->container() !!}
        </div>
    
        {{-- description --}}
        <div class="col">
            <h6>LHR YTD Aktual</h6>
            <h1><strong>{{ $chart3->getLhrYtd('curr', $currentYear) }}</strong></h1>
            <br>
            <h6>Aktual {{ $prevYear }}</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong>{{ $chart3->getLhrYtd('prev', $currentYear) }}</strong></h4>
                @if($chart3->getGrowth($currentYear) <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ $chart3->getGrowth($currentYear) }} %</span>
                @else
                    <span class="col p-0 text-success">    &#9650; {{ $chart3->getGrowth($currentYear) }} %</span>
                @endif
            </div>
        </div>
    </div>
</div>

<script src="{{ $graph3->cdn() }}"></script>

{{ $graph3->script() }}