@extends('backend.home')

@section('tittle', 'Post')

@section('content')
<div class="col-lg-12 justify-content-center">
    <div class="text-center">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <a class="btn btn-info btn-sm mb-4" href="/post/create">Tambah Post</a>
    <table class="table table-responsive table-hover table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Judul Post</th>
                <th>Kategori</th>
                <th>Tags</th>
                <th>Author</th>
                <th>Thumbnail</th>
                <th>Action</th>
            </tr>
        </thead>
        @foreach ($post as $p => $hasil)
        <tbody>
            <tr>
                <td>{{$p + $post->firstitem()}}</td>
                <td>{{$hasil->judul}}</td>
                <td>{{$hasil->category['name']}}</td>
                <td>
                    @foreach($hasil->tags as $tag)
                    <ul>
                        <span class="badge badge-secondary">{{$tag->name}}</span>
                    </ul>
                    @endforeach
                </td>
                <td>{{$hasil->users['name']}}</td>
                <td><img class="img-responsive img-thumbnail" src="{{url($hasil->gambar)}}" alt="" style="width: 100px"></td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/post/{{$hasil->id}}/edit">Edit</a>
                    <form action="/post/{{$hasil->id}}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </tbody>
        @endforeach
    </table>
    {{$post->links()}}
</div>

@endsection