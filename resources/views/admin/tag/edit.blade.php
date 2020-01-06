@extends('backend.home')

@section('tittle', 'Edit Data Tag')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/tag/{{$tag->id}}">
        @csrf
        @method('patch')
        <div class="form-group">
            <label>Nama Tag</label>
            <input type="text" name="tag" class="form-control @error('tag') is-invalid @enderror" value="{{$tag->name}}">
            @error('tag')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="form-group">
            <button class="btn btn-primary">Ubah Tag</button>
        </div>
    </form>
</div>

@endsection