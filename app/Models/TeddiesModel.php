<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeddiesModel extends Model
{
    use HasFactory;
    protected $fillable = ['_id', 'name', 'description', 'price', 'color', 'imageURL'];
}
