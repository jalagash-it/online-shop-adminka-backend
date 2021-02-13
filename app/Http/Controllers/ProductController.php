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
        $data = $request->only(['name', 'price']);
        $created = Product::create($data);
        return $created->toJson();
    }
    public function update(Request $request, $id)
    {
        $item = Product::find($id);
        $item->name = $request->input('name');
        $item->parent_id = $request->input('price');
        $item->save();
        return $item;
    }
    public function remove($id)
    {
        return Product::destroy($id);
    }

}
