<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::paginate(10);
        return view('admin.users.index', compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.users.create');
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
            'user' => 'required',
            'email' => 'required|email',
            'tipe' => 'required',
        ]);

        if ($request->input('password')) {
            $password = bcrypt($request->password);
        } else {
            $password = bcrypt('1234');
        }

        User::create([
            'name' => $request->user,
            'email' => $request->email,
            'password' => $password,
            'tipe' => $request->tipe
        ]);

        return redirect('/user')->with('status', 'Data User Berhasil Di Tambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($user)
    {
        $useres = User::find($user);

        return view('admin.users.edit', compact('useres'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'user' => 'required',
            'tipe' => 'required'
        ]);

        if ($request->input('password')) {
            $user_data = [
                'name' => $request->user,
                'tipe' => $request->tipe,
                'password' => bcrypt($request->password)
            ];
        } else {
            $user_data = [
                'name' => $request->user,
                'tipe' => $request->tipe
            ];
        }

        $user = User::find($id);
        $user->update($user_data);

        return redirect('/user')->with('status', 'Data User Berhasil Di Update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);

        $user->delete();

        return redirect('/user')->with('status', 'Data User Berhasil Di Hapus');
    }
}
