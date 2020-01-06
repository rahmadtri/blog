@extends('backend.home')

@section('tittle', 'Tambah User')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/user">
        @csrf
        <div class="form-group">
            <label>Nama User</label>
            <input type="text" name="user" class="form-control @error('user') is-invalid @enderror" placeholder="Masukan User">
            @error('user')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Masukan Email">
            @error('email')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Tipe User</label>
            <select class="form-control" name="tipe" id="">
                <option value="">Pilih Tipe User</option>
                <option value="1">Admin</option>
                <option value="0">Author</option>
            </select>
            @error('tipe')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="text" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Masukan Password">
            @error('password')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <button class="btn btn-primary">Tambah User</button>
        </div>
    </form>
</div>

@endsection