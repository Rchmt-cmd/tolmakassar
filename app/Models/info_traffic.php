<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class info_traffic extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
    ];

    protected $fillable = ['date','company','gate','class','traffic','source'];

}
