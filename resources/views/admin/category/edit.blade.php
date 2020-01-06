@extends('backend.home')

@section('tittle', 'Edit Data Kategori')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/category/{{$category->id}}">
        @csrf
        @method('patch')
        <div class="form-group">
            <label>Nama Kategori</label>
            <input type="text" name="kategori" class="form-control @error('kategori') is-invalid @enderror" value="{{$category->name}}">
            @error('kategori')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <button class="btn btn-primary">Ubah Kategori</button>
        </div>
    </form>
</div>

@endsection