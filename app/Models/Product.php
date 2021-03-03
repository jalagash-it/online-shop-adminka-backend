<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'name',
        'price',
        'covering',
        'depth',
        'width',
        'height',
        'wave_width',
        'wave_height',
        'guarantee',
        'category_id'];
}
