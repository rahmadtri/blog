<?php

namespace App\Http\Controllers;

use App\Category;
use App\Posts;
use App\Tags;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = Posts::paginate(10);
        return view('admin.post.index', compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tags = Tags::all();
        $category = Category::all();
        return view('admin.post.create', compact('category', 'tags'));
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
            'judul' => 'required|min:3',
            'category_id' => 'required',
            'content' => 'required',
            'gambar' => 'required'
        ]);

        // ambil data gambar
        $gambar = $request->gambar;
        $new_gambar = time() . $gambar->getClientOriginalName();

        $post = Posts::create([
            'judul' => $request->judul,
            'category_id' => $request->category_id,
            'content' => $request->content,
            'gambar' => 'public/uplouds/posts/' . $new_gambar,
            'slug' => Str::slug($request->judul),
            'users_id' => Auth::id()
        ]);


        $post->tags()->attach($request->tags);

        $gambar->move('public/uplouds/posts', $new_gambar);

        return redirect('/post')->with('status', 'Data Post Berhasil Di Tambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Posts  $posts
     * @return \Illuminate\Http\Response
     */
    public function show(Posts $posts)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Posts  $posts
     * @return \Illuminate\Http\Response
     */
    public function edit(Posts $post)
    {
        $category = Category::all();
        $tags = Tags::all();
        return view('admin.post.edit', compact('post', 'tags', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Posts  $posts
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Posts $post)
    {
        $request->validate([
            'judul' => 'required|min:3',
            'category_id' => 'required',
            'content' => 'required',
        ]);

        // ambil data gambar

        $post_id = Posts::findorfail($post->id);

        if ($request->has('gambar')) {

            $gambar = $request->gambar;
            $new_gambar = time() . $gambar->getClientOriginalName();
            $gambar->move('public/uplouds/posts', $new_gambar);

            $post_data = [
                'judul' => $request->judul,
                'category_id' => $request->category_id,
                'content' => $request->content,
                'gambar' => 'public/uplouds/posts/' . $new_gambar,
                'slug' => Str::slug($request->judul)
            ];
        } else {
            $post_data = [
                'judul' => $request->judul,
                'category_id' => $request->category_id,
                'content' => $request->content,
                'slug' => Str::slug($request->judul)
            ];
        }


        $post_id->tags()->sync($request->tags);
        $post_id->update($post_data);

        return redirect('/post')->with('status', 'Data Post Berhasil Di Ubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Posts  $posts
     * @return \Illuminate\Http\Response
     */
    public function destroy(Posts $post)
    {
        Posts::destroy($post->id);

        return redirect('/post')->with('status', 'Data Post Berhasil Di Hapus');
    }

    public function tampil_hapus()
    {
        $post = Posts::onlyTrashed()->paginate(10);
        return view('admin.post.hapus', compact('post'));
    }

    public function restore($post)
    {
        $post = Posts::withTrashed()->where('id', $post)->first();

        $post->restore();
        return redirect()->back()->with('status', 'Data Post Berhasil Di Restore, Cek List Post!!!!');
    }

    public function kill($post)
    {
        $post = Posts::withTrashed()->where('id', $post)->first();

        $post->forceDelete();
        return redirect()->back()->with('status', 'Data Post Berhasil Di Hapus Permanen');
    }
}
