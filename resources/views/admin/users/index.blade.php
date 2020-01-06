@extends('backend.home')

@section('tittle', 'Users')

@section('content')
<div class="col-lg-12 justify-content-center">
    <div class="text-center">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <a class="btn btn-info btn-sm mb-4" href="/user/create">Tambah Users</a>
    <table class="table table-hover table-striped table-responsive">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama User</th>
                <th>Email</th>
                <th>Type</th>
                <th>Action</th>
            </tr>
        </thead>
        @foreach ($user as $t => $hasil)
        <tbody>
            <tr>
                <td>{{$t + $user->firstitem()}}</td>
                <td>{{$hasil->name}}</td>
                <td>{{$hasil->email}}</td>
                <td>
                    @if($hasil->tipe == 1)
                    <span class="badge badge-warning">Admin</span>
                    @else
                    <span class="badge badge-success">Author</span>
                    @endif

                </td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/user/{{$hasil->id}}/edit">Edit</a>
                    <form action="/user/{{$hasil->id}}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </tbody>
        @endforeach
    </table>
    {{$user->links()}}
</div>

@endsection