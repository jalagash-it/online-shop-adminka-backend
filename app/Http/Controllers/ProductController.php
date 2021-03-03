<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all()
    {
        return Product::all();
    }

    public function byId($id)
    {
        return Product::find($id);
    }
    public function create(Request $request)
    {
        $data = $request->only([
            'name',
            'price',
            'covering',
            'depth',
            'width',
            'height',
            'wave_width',
            'wave_height',
            'guarantee',
            'category_id',
        ]);
        $created = Product::create($data);
        return $created->toJson();
    }
    public function update(Request $request, $id)
    {
        $data = $request->only([
            'id',
            'name',
            'price',
            'covering',
            'depth',
            'width',
            'height',
            'wave_width',
            'wave_height',
            'guarantee',
            'category_id',
        ]);
        $item = Product::find($id);
        $item->name = $request->input('name');
        $item->price = $request->input('price');
        $item->covering = $request->input('covering');
        $item->depth = $request->input('depth');
        $item->width = $request->input('width');
        $item->height = $request->input('height');
        $item->wave_width = $request->input('wave_width');
        $item->wave_height = $request->input('wave_height');
        $item->guarantee = $request->input('guarantee');
        $item->category_id = $request->input('category_id');
        $item->save();
        return $item;
    }
    public function remove($id)
    {
        return Product::destroy($id);
    }

}
