
    <div class="row bg-white rounded shadow p-4">
        <div class=" col-9 ">
            {!! $chart3->container() !!}
        </div>

        <div class="col">

        </div>
    </div>

<script src="{{ $chart3->cdn() }}"></script>

{{ $chart3->script() }}