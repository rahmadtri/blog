@extends('backend.home')

@section('tittle', 'Tambah Data Kategori')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/category">
        @csrf
        <div class="form-group">
            <label>Nama Kategori</label>
            <input type="text" name="kategori" class="form-control @error('kategori') is-invalid @enderror" placeholder="Masukan Kategori">
            @error('kategori')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <button class="btn btn-primary">Tambah Kategori</button>
        </div>
    </form>
</div>

@endsection