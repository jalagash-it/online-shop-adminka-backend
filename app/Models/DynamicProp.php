<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DynamicProp extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'name',
        'product_id',
        'key',
        'val',
    ];
}
