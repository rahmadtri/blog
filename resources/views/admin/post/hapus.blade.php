@extends('backend.home')

@section('tittle', 'Data TerHapus')

@section('content')
<div class="col-lg-12 justify-content-center">
    <div class="text-center">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <table class="table table-hover table-striped table-sm">
        <thead>
            <tr>
                <th>No</th>
                <th>Judul Post</th>
                <th>Kategori</th>
                <th>Tags</th>
                <th>Thumbnail</th>
                <th>Action</th>
            </tr>
        </thead>
        @foreach ($post as $p => $hasil)
        <tbody>
            <tr>
                <td>{{$p + $post->firstitem()}}</td>
                <td>{{$hasil->judul}}</td>
                <td>{{$hasil->category->name}}</td>
                <td>
                    <ul>
                        @foreach($hasil->tags as $tag)
                        <li>{{$tag->name}}</li>
                        @endforeach
                    </ul>
                </td>
                <td><img class="img-responsive img-thumbnail" src="{{url($hasil->gambar)}}" alt="" style="width: 100px"></td>
                <td>
                    <a class="btn btn-info btn-sm" href="/post/restore/{{$hasil->id}}">Restore</a>
                    <form action="/post/kill/{{$hasil->id}}" method="post" class="d-inline">
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