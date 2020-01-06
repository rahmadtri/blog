@extends('backend.home')

@section('tittle', 'Edit User')

@section('content')
<div class="col-lg-12 justify-content-center">
    <form method="post" action="/user/{{$useres->id}}">
        @csrf
        @method('patch')
        <div class="form-group">
            <label>Nama User</label>
            <input type="text" name="user" class="form-control @error('user') is-invalid @enderror" value="{{$useres->name}}">
            @error('user')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" readonly name="email" class="form-control @error('email') is-invalid @enderror" value="{{$useres->email}}">
            @error('email')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Tipe User</label>
            <select class="form-control" name="tipe" id="">
                <option value="" holder>Pilih Tipe User</option>
                <option value="1" holder @if($useres->tipe == 1)
                    selected
                    @endif
                    >Admin</option>
                <option value="0" holder @if($useres->tipe == 0)
                    selected
                    @endif
                    >Author</option>
            </select>
            @error('tipe')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="text" name="password" class="form-control @error('password') is-invalid @enderror" placeholder="Masukan Password">
            @error('password')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <button class="btn btn-primary">Update User</button>
        </div>
    </form>
</div>

@endsection