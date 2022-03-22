<div class="row bg-white rounded shadow p-4">
    {{-- header --}}
    <h3><strong>Laporan Lalu Lintas Harian Per Gerbang</strong></h3>
    <h6>Periode Maret 2022</h6><br><br>

    {{-- dropdown --}}
    <div>
        <button class="btn dark light dropdown-toggle border border-1" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Scope
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">Kaluku Bodoa</a></li>
            <li><a class="dropdown-item" href="#">Parangloe</a></li>
            <li><a class="dropdown-item" href="#">Cambayya</a></li>
            <li><a class="dropdown-item" href="#">Tallo Timur</a></li>
            <li><a class="dropdown-item" href="#">Tallo Barat </a></li>
        </ul>
    </div>

    {{-- chart --}}
    <div class=" col-10 ">
        {!! $chart2->container() !!}
    </div>

    {{-- description --}}
    <div class="col align-self-center">
        <h6>LHR Terkini</h6>
        <h1><strong>45.000</strong></h1>
        <br>
        <h6>Mar 2021</h6>
        <h4><strong>48.437</strong><span class="text-danger fs-6">    &#9660; 2.4%</span></h4>
        <h6>Feb 2022</h6>
        <h4><strong>31.750</strong><span class="text-success fs-6">    &#9650; 4.1%</span></h4>
    </div>
</div>

<script src="{{ $chart2->cdn() }}"></script>

{{ $chart2->script() }}