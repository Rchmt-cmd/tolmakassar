<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle }}</strong></h3>
    <h6>Periode Maret 2022</h6><br>
    
    {{-- dropdown --}}
    <div class="dropdown">
        <button class="btn light dark border border-1 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Scope
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">Januari</a></li>
            <li><a class="dropdown-item" href="#">Februari</a></li>
            <li><a class="dropdown-item" href="#">Maret</a></li>
        </ul>
    </div>
    <div class="row align-items-center">
        {{-- header --}}
        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $chart->container() !!}
        </div>
    
        {{-- description --}}
        <div class="col">
            <h6>LHR Terkini</h6>
            <h1><strong>{{ $lhr->getLhrData('2022', '03', 'MMN') }}</strong></h1>
            <br>
            <h6>Mar 2021</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong>{{ $lhr->getLhrData('2021', '03', 'MMN') }}</strong></h4>
                @if($lhr->getGrowth('year', '2022', '03', 'MMN') <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ $lhr->getGrowth('year', '2022', '03', 'MMN') }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ $lhr->getGrowth('year', '2022', '03', 'MMN') }}%</span>
                @endif
            </div>
            

            <h6>Feb 2022</h6>
            <div class="row">
                <h4 class="col-7"><strong>{{ $lhr->getLhrData('2022', '02', 'MMN') }}</strong></h4>
                @if($lhr->getGrowth('month', '2022', '03', 'MMN') <= 0)
                    <span class="col p-0 text-danger">    &#9660; {{ abs($lhr->getGrowth('month', '2022', '03', 'MMN')) }}%</span>  
                @else
                    <span class="col p-0 text-success">    &#9650; {{ abs($lhr->getGrowth('month', '2022', '03', 'MMN')) }}%</span>
                @endif
            </div>
        </div>
    </div>
</div>

<script src="{{ $chart->cdn() }}"></script>
<script>
    
</script>

{{ $chart->script() }}