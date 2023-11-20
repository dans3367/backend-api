<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Store;

class StoreController extends Controller
{
    public function index()
{
    $stores = Store::all();
    return response()->json($stores);
}
}
