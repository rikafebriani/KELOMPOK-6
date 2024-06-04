<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ormawa;
use App\Models\profil;

class YourController extends Controller
{
    public function index()
    {
        $title = 'Ormawa'
        $slug = 'ormawa';
        $dataOrmawa = ormawa::join('profil',
                                    'ormawa.')
        return view('dashboard', compact('slug'));
    }

    public function profil()
    {
        $slug = 'profil';
        return view('profil', compact('slug'));
    }

    public function ormawa()
    {
        $title = 'Ormawa';
        $slug = 'ormawa';
        $dataOrmawa = Ormawa::all();

        return view('ormawa.index', compact('title', 'slug', 'dataOrmawa'));
    }
}
