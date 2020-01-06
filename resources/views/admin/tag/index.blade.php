@extends('backend.home')

@section('tittle', 'Tag')

@section('content')
<div class="col-lg-12 justify-content-center">
    <div class="text-center">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <a class="btn btn-info btn-sm mb-4" href="/tag/create">Tambah Tags</a>
    <table class="table table-hover table-striped table-responsive">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Tags</th>
                <th>Action</th>
            </tr>
        </thead>
        @foreach ($tag as $t => $hasil)
        <tbody>
            <tr>
                <td>{{$t + $tag->firstitem()}}</td>
                <td>{{$hasil->name}}</td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/tag/{{$hasil->id}}/edit">Edit</a>
                    <form action="/tag/{{$hasil->id}}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </tbody>
        @endforeach
    </table>
    {{$tag->links()}}
</div>

@endsection