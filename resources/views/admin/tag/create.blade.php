@extends('backend.home')

@section('tittle', 'Tambah Data Tag')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/tag">
        @csrf
        <div class="form-group">
            <label>Nama Tag</label>
            <input type="text" name="tag" class="form-control @error('tag') is-invalid @enderror" placeholder="Masukan Tag">
            @error('tag')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <button class="btn btn-primary">Tambah Tag</button>
        </div>
    </form>
</div>

@endsection