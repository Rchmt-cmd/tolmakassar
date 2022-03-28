
    <div class="row m-0 justify-content-between">
        <div class=" col p-4 bg-white rounded shadow ">
            <h3><strong>{{ $chartTitle4 }}</strong></h3>
            <h6>Periode Maret 2022</h6><br>
            {!! $chart4->container() !!} <br><br>
            <h3><strong>Perbandingan Per Gerbang</strong></h3>
            <h6>2022 vs 2021</h6><br>
            <table class="table table-hover table-sm text-small">
                <thead>
                    <tr>
                        <th scope="col-9"></th>
                        <th scope="col-1">Kaluku Bodoa</th>
                        <th scope="col-1">Parangloe</th>
                        <th scope="col-1">Cambayya</th>
                        <th scope="col-1">Tallo Timur</th>
                        <th scope="col-1">Parangloe Ramp</th>
                        <th scope="col-1">Tallo Barat</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">2022</th>
                        <td>27.6%</td>
                        <td>27.0%</td>
                        <td>21.8%</td>
                        <td>9.1%</td>
                        <td>8.7%</td>
                        <td>5.9%</td>
                    </tr>
                    <tr>
                        <th scope="row">2021</th>
                        <td>27.0%</td>
                        <td>26.3%</td>
                        <td>22.2%</td>
                        <td>9.7%</td>
                        <td>9.0%</td>
                        <td>5.9%</td>
                    </tr>
                </tbody>
            </table>
            {!! $chart7->container() !!}
        </div>
        <div class="col p-4 bg-white rounded shadow">
            <h3><strong>{{ $chartTitle5 }}</strong></h3>
            <h6>Periode Maret 2022</h6><br>
            {!! $chart5->container() !!} <br><br>
            <h3><strong>Perbandingan Per Golongan</strong></h3>
            <h6>2022 vs 2021</h6><br>
            <table class="table table-hover table-sm text-small">
                <thead>
                    <tr>
                        <th scope="col-9"></th>
                        <th scope="col-1">Gol. I</th>
                        <th scope="col-1">Gol. II</th>
                        <th scope="col-1">Gol. III</th>
                        <th scope="col-1">Gol. IV</th>
                        <th scope="col-1">Gol. V</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">2022</th>
                        <td>35.3%</td>
                        <td>27.0%</td>
                        <td>22.2%</td>
                        <td>9.7%</td>
                        <td>5.9%</td>
                    </tr>
                    <tr>
                        <th scope="row">2021</th>
                        <td>35.2%</td>
                        <td>23.8%</td>
                        <td>25.2%</td>
                        <td>10.9%</td>
                        <td>4.9%</td>
                    </tr>
                </tbody>
            </table>
            {!! $chart8->container() !!}
        </div>
    </div>

<script src="{{ $chart4->cdn() }}"></script>
<script src="{{ $chart5->cdn() }}"></script>
<script src="{{ $chart7->cdn() }}"></script>
<script src="{{ $chart8->cdn() }}"></script>

{{ $chart4->script() }}
{{ $chart5->script() }}
{{ $chart7->script() }}
{{ $chart8->script() }}