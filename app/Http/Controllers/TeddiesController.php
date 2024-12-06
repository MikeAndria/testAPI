<?php

namespace App\Http\Controllers;
use App\Models\TeddiesModel;

use Illuminate\Http\Request;

class TeddiesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(TeddiesModel::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            '_id' => 'required|max:255',
            'name' => 'required|max:255',
            'description' => 'required',
            'price' => 'required|numeric',
            'color' => 'required|max:50',
            'imageURL' => 'required|amx:255'
        ]);

        $teddy = TeddiesModel::create($validateData);
        return response()->json($teddy, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $teddy = TeddiesModel::find($id);

        if ($teddy) {
            return response()->json($teddy, 200); //ok
        }
        else{
            return response()->json(["message" => 'Product not fuound'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, TeddiesModel $teddy)
    {
        $validateData = $request->validate([
            'name' => 'required|max:255',
            'description' => 'required',
            'price' => 'required|numeric',
            'color' => 'required|max:50',
            'imageURL' => 'required|amx:255'
        ]);
        if ($teddy){
            $teddy->update($validateData);
            return response()->json($teddy, 200);
        }
        else{
            return response()->json(["message" => 'Product not fuound'], 404);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( TeddiesModel $teddy)
    {
        if ($teddy){
            $teddy->delete();
            return response()->json(null, 204);
        }
        else{
            return response()->json(['message' => 'Product not found'], 404);
        }
    }
}
