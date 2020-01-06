<?php

namespace App\Http\Controllers;

use App\Tags;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class Tag extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tag = Tags::paginate(10);
        return view('admin.tag.index', compact('tag'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.tag.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'tag' => 'required|min:3',
        ]);

        $tag = Tags::create([
            'name' => $request->tag,
            'slug' => Str::slug($request->tag)
        ]);
        return redirect('/tag')->with('status', 'Data Tag Berhasil Di Tambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function show(Tags $tags)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function edit(Tags $tag)
    {
        return view('admin.tag.edit', compact('tag'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tags $tag)
    {
        $request->validate([
            'tag' => 'required|min:3',
        ]);

        Tags::where('id', $tag->id)
            ->update([
                'name' => $request->tag,
                'slug' => Str::slug($request->tag)
            ]);

        // tampilkan flash data
        return redirect('/tag')->with('status', 'Data Tag Berhasil Di Ubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tags $tag)
    {
        Tags::destroy($tag->id);

        return redirect('/tag')->with('status', 'Data Tag Berhasil Di Hapus');
    }
}
