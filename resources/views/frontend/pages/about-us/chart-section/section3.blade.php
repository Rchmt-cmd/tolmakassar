<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle3 }}</strong></h3>
    <h6>Update Maret 2022</h6><br>
    
    <div class="row align-items-center">
        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $chart3->container() !!}
        </div>
    
        {{-- description --}}
        <div class="col">
            <h6>LHR YTD Aktual</h6>
            <h1><strong>47.339</strong></h1>
            <br>
            <h6>Aktual 2021</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong>44.629</strong></h4>
                <span class="col p-0 text-success">    &#9650; 6.1%</span>
            </div>
        </div>
    </div>
</div>

<script src="{{ $chart3->cdn() }}"></script>

{{ $chart3->script() }}