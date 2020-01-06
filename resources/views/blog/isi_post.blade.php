@extends('template_blog.content')
@section('isi')
<div class="container">
    <div class="row">

        @foreach($data as $da)

        <div class="col-md-12">
            <!-- PAGE HEADER -->
            <div id="post-header" class="page-header">
                <div class="page-header-bg" style="background-image: url('{{url($da->gambar)}}');" data-stellar-background-ratio="0.5"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="post-category">
                                <a href="category.html">{{$da->category->name}}</a>
                            </div>
                            <h1>{{$da->judul}}</h1>
                            <ul class="post-meta">
                                <li><a href="author.html">{{$da->users['name']}}</a></li>
                                <li>{{$da->created_at}}</li>
                                <!-- <li><i class="fa fa-comments"></i> 3</li>
                                <li><i class="fa fa-eye"></i> 807</li> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /PAGE HEADER -->

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h3>{{$da->judul}}</h3>
                    <p> {!!$da->content!!}</p>
                </div>
                @include('template_blog.widget')
            </div>

        </div>




    </div>
</div>




@endforeach

@endsection