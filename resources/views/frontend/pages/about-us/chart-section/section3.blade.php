<div class="bg-white rounded shadow p-4">
    <h3><strong>{{ $chartTitle3 }}</strong></h3>
    <h6>Periode Maret 2022</h6><br>
    
    <div class="row align-items-center">
        
        {{-- chart --}}
        <div class=" col-10 ">
            {!! $chart3->container() !!}
        </div>
    
        {{-- description --}}
        <div class="col">
            <h6>LHR Terkini</h6>
            <h1><strong>47.288</strong></h1>
            <br>
            <h6>Mar 2021</h6>
            <div class="row justify-content-start">
                <h4 class="col-7"><strong>48.437</strong></h4>
                <span class="col p-0 text-danger">    &#9660; 2.4%</span>
            </div>

            <h6>Feb 2022</h6>
            <div class="row">
                <h4 class="col-7"><strong>31.750</strong></h4>
                <span class="col p-0 text-success">    &#9650; 4.1%</span>
            </div>
        </div>
    </div>
</div>

<script src="{{ $chart3->cdn() }}"></script>

{{ $chart3->script() }}