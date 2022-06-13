<?php

namespace App\Http\Controllers\DataTraffic;

use App\Http\Controllers\Controller;
use App\Models\info_traffic;
use Illuminate\Http\Request;

class DataTrafficApiController extends Controller
{
    public function index()
    {
        return info_traffic::all();
    }

    public function store(Request $request)
    {
        $trafficsData = $request->all();
        foreach ($trafficsData['traffics'] as $value) {
            $traffic = new info_traffic;
            $traffic->date = $value['date'];
            $traffic->company = $value['company'];
            $traffic->gate = $value['gate'];
            $traffic->class = $value['class'];
            $traffic->traffic = $value['traffic'];
            $traffic->source = $value['source'];
            $traffic->save();
        }
        return response()->json(['success' => 'Data Traffic Berhasil Ditambahkan']);
    }
}
