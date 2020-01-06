@extends('template_blog.content')
@section('isi')
<!-- post -->
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                @foreach($data as $da)
                <!-- post -->
                <div class="post post-row">
                    <a class="post-img" href="blog-post.html"><img src="{{url($da->gambar)}}" alt=""></a>
                    <div class="post-body">
                        <div class="post-category">
                            <a href="category.html">{{$da->category->name}}</a>
                        </div>
                        <h3 class="post-title"><a href="blog-post.html">{{$da->judul}}</a></h3>
                        <ul class="post-meta">
                            <li><a href="author.html">{{$da->users['name']}}</a></li>
                            <li>{{$da->created_at}}</li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...</p>
                    </div>
                </div>
                <!-- /post -->
                @endforeach
            </div>
            @include('template_blog.widget')
        </div>
    </div>
</div>

<div class="text-center">
    {{$data->links()}}
</div>



@endsection