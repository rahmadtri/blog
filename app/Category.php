<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $fillable = ['name', 'slug'];

    // relasi untuk nampilin jumlah category di widget
    public function posts()
    {
        return $this->hasMany('App\Posts');
    }

    // mengambil data relasi tpi bukan id
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
