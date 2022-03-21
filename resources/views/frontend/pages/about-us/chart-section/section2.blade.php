
    <div class="row bg-white rounded shadow p-4">
        <div class=" col-9 ">
            {!! $chart2->container() !!}
        </div>

        <div class="col">

        </div>
    </div>

<script src="{{ $chart2->cdn() }}"></script>

{{ $chart2->script() }}