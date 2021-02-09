<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function all()
    {
        return Category::all();
    }

    public function byId($id)
    {
        return Category::find($id);
    }
    public function create(Request $request)
    {
        $data = $request->only(['name', 'parent_id']);
        $created = Category::create($data);
        return $created->toJson();
    }
    public function update(Request $request, $id)
    {
        $item = Category::find($id);
        $item->name = $request->input('name');
        $item->parent_id = $request->input('parent_id');
        $item->save();
        return $item;
    }
    public function remove($id)
    {
        return Category::destroy($id);
    }

}
