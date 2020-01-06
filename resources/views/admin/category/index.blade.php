@extends('backend.home')

@section('tittle', 'Kategori')

@section('content')
<div class="col-lg-12 justify-content-center">
    <div class="text-center">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <a class="btn btn-info btn-sm mb-4" href="/category/create">Tambah Kategori</a>
    <table class="table table-hover table-striped table-responsive">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Kategori</th>
                <th>Action</th>
            </tr>
        </thead>
        @foreach ($category as $cat => $hasil)
        <tbody>
            <tr>
                <td>{{$cat + $category->firstitem()}}</td>
                <td>{{$hasil->name}}</td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/category/{{$hasil->id}}/edit">Edit</a>
                    <form action="/category/{{$hasil->id}}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </tbody>
        @endforeach
    </table>
    {{$category->links()}}
</div>

@endsection