@extends('website.layouts.layouts')
@section('title', 'المدونة')
@section('content')


    <!-- blogs page -->
    <div class="blogs-page">
        <div class="container">

            <div class="page-heading">
                <p>
                    المقالات الطبية
                </p>
            </div>
        </div>
        <div class="page-body">
            <div class="container">
                <div class="section-body">
                    <ul class="main-section-ul">
                        @if($blogs)
                            @foreach($blogs as $blog)
                                <li class="news-li" data-aos="zoom-in" data-aos-duration="1500">
                                    <a class="news-a" href="{{url('blog/'.$blog->page->url)}}">
                                        <div class="news-img">
                                            <img src="{{asset($blog->image_id ? $blog->image->path : '')}}" alt="{{$blog->image->alt}}">
                                        </div>
                                        <div class="news-body">
                                            <div class="news-heading-date">
                                                <div class="heading">
                                                    <p>
                                                       {{$blog->{'blog_'.currentLang()}->title }}
                                                    </p>
                                                </div>
                                                <div class="date">
                                                    <i class="ion-ios-calendar-outline"></i>
                                                    <span>
                                                        {{date('d/m', strtotime($blog->created_at))}}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="news-text">
                                                <p>
                                                    {{$blog->{'blog_'.currentLang()}->body }}
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                   {{-- <div class="social-div">
                                        <a href="#">
                                            <i class="ion-social-facebook-outline"></i>
                                        </a>
                                        <a href="#">
                                            <i class="ion-social-twitter-outline"></i>
                                        </a>
                                        <a href="#">
                                            <i class="ion-social-googleplus-outline"></i>
                                        </a>
                                        <a href="#">
                                            <i class="ion-social-pinterest-outline"></i>
                                        </a>
                                    </div>--}}
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- blogs page -->


@endsection
