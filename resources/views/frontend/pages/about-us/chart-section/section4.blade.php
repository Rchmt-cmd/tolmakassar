
    <div class="row m-0 justify-content-between">
        <div class=" col p-4 bg-white rounded shadow ">
            <h3><strong>{{ $chartTitle4 }}</strong></h3>
            <h6>Periode {{ $currentMonthFullName }} {{ $currentYear }}</h6><br>
            {!! $graph4->container() !!} <br><br>
            <h3><strong>Perbandingan Per Gerbang</strong></h3>
            <h6>{{ $currentYear }} vs {{ $prevYear }}</h6><br>
            <table class="table table-hover table-sm text-small">
                <thead>
                    <tr>
                        <th scope="col-9"></th>
                        @foreach ($chart4->getGraphData('gate', 'curr', $currentYear, $currentMonthNumber) as $gate)
                            <th scope="col-1" class="test">{{ $gate }}</th>
                        @endforeach
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="test">{{ $currentYear }}</th>
                        @foreach ($chart4->getGraphData('percentage', 'curr', $currentYear, $currentMonthNumber) as $percentage)
                            <td class="test">{{ $percentage }}%</td>
                        @endforeach
                    </tr>
                    <tr>
                        <th scope="row" class="test">{{ $prevYear }}</th>
                        @foreach ($chart4->getGraphData('percentage', 'prev', $currentYear, $currentMonthNumber) as $percentage)
                            <td class="test">{{ $percentage }}%</td>
                        @endforeach
                    </tr>
                </tbody>
            </table>
            {!! $chart7->container() !!}
        </div>


        <div class="col p-4 bg-white rounded shadow">
            <h3><strong>{{ $chartTitle5 }}</strong></h3>
            <h6>Periode {{ $currentMonthFullName }} {{ $currentYear }}</h6><br>
            {!! $graph5->container() !!} <br><br>
            <h3><strong>Perbandingan Per Golongan</strong></h3>
            <h6>{{ $currentYear }} vs {{ $prevYear }}</h6><br>
            <table class="table table-hover table-sm text-small">
                <thead>
                    <tr>
                        <th scope="col-9"></th>
                        @foreach ($chart5->getGraphData('class', 'curr', $currentYear, $currentMonthNumber) as $class)
                            <th scope="col-1" class="test">{{ $class }}</th>
                        @endforeach
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="test">{{ $currentYear }}</th>
                        @foreach ($chart5->getGraphData('percentage', 'curr', $currentYear, $currentMonthNumber) as $percentage)
                            <td class="test">{{ $percentage }}%</td>
                        @endforeach
                    </tr>
                    <tr>
                        <th scope="row" class="test">{{ $prevYear }}</th>
                        @foreach ($chart5->getGraphData('percentage', 'prev', $currentYear, $currentMonthNumber) as $percentage)
                            <td class="test">{{ $percentage }}%</td>
                        @endforeach
                    </tr>
                </tbody>
            </table>
            {!! $chart8->container() !!}
        </div>
    </div>

<script src="{{ $graph4->cdn() }}"></script>
<script src="{{ $graph5->cdn() }}"></script>
<script src="{{ $chart7->cdn() }}"></script>
<script src="{{ $chart8->cdn() }}"></script>

{{ $graph4->script() }}
{{ $graph5->script() }}
{{ $chart7->script() }}
{{ $chart8->script() }}