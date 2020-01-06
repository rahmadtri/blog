@extends('backend.home')

@section('tittle', 'Tambah Data Post')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="POST" action="/post" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label>Judul</label>
            <input type="text" name="judul" class="form-control @error('judul') is-invalid @enderror" placeholder="Masukan Judul">
            @error('judul')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Kategori</label>
            <select class="form-control" id="" name="category_id">
                <option value="" holder>Pilih Kategori</option>
                @foreach($category as $result)
                <option value="{{$result->id}}">{{$result->name}}</option>
                @endforeach
            </select>
            @error('category_id')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Pilih Tags</label>
            <select class="form-control select2" multiple="" name="tags[]">
                @foreach($tags as $tag)
                <option value="{{$tag->id}}">{{$tag->name}}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label>Konten</label>
            <textarea name="content" id="content" class="form-control" cols="30" rows="10" placeholder="Masukan artikel"></textarea>
            @error('content')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Thumbnail</label>
            <input type="file" name="gambar" class="form-control @error('gambar') is-invalid @enderror">
            @error('gambar')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <button class="btn btn-primary">Tambah Post</button>
        </div>
    </form>
</div>

<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('content');
</script>

@endsection