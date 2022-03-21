
    <div class="row justify-content-between">
        <div class=" col mr-2 p-4 bg-white rounded shadow ">
            {!! $chart4->container() !!}
        </div>

        <div class="col ml-2 p-4 bg-white rounded shadow">
            {!! $chart5->container() !!}
        </div>
    </div>

<script src="{{ $chart4->cdn() }}"></script>
<script src="{{ $chart5->cdn() }}"></script>

{{ $chart4->script() }}
{{ $chart5->script() }}