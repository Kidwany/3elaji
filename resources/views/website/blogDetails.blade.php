@extends('website.layouts.layouts')
@section('title', 'المدونة')
@section('content')

    <div class="news-details-page">
        <div class="details-wrapper">
            <div class="news-img">
                <img src="{{asset($blog->image->path)}}" alt="{{$blog->image->alt}}">
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
                    <div class="text-section">
                        <i class="linearicons-pencil"></i>
                        <p>
                            {{$blog->{'blog_'.currentLang()}->body }}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
