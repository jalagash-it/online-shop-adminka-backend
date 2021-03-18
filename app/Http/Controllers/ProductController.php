<?php

namespace App\Http\Controllers;

use App\Models\DynamicProp;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function all()
    {
        $products = Product::all();
        for ($i = 0; $i < count($products); $i++) {
            $products[$i]['fields'] = DynamicProp::where('product_id', $products[$i]['id'])->get();
        }
        return $products;
    }

    public function byId($id)
    {
        $product = Product::find($id);
        $product['fields'] = DynamicProp::where('product_id', $product['id'])->get();
        return $product;
    }
    public function create(Request $request)
    {
        $data = $request->only([
            'name',
            'category_id',
        ]);
        $created = Product::create($data);
        $fields = $request->input('fields');
        $props = [];
        for ($i = 0; $i < count($fields); $i++) {
            $fields[$i]['product_id'] = $created['id'];
            array_push($props, DynamicProp::create($fields[$i]));
        }

        return ['product' => $created, 'fields' => $props];
    }
    public function update(Request $request, $id)
    {
        $data = $request->only([
            'id',
            'name',
            'category_id',
        ]);
        $item = Product::find($id);
        $item->name = $request->input('name');
        $item->category_id = $request->input('category_id');
        DynamicProp::where('product_id', $id)->delete();
        $fields = $request->input('fields');
        $props = [];
        for ($i = 0; $i < count($fields); $i++) {
            $fields[$i]['product_id'] = $id;
            array_push($props, DynamicProp::create($fields[$i]));
        }
        $item->save();
        return $item;
    }
    public function remove($id)
    {
        return Product::destroy($id);
    }

}
