@extends('website.layouts.layouts')
@section('title', 'الأطباء')
@section('content')

    <!-- start doctors page -->
    <div class="doctors-page">
        <div class="page-wrapper">
            <div class="page-heading">
                <p>
                    أطباء علاجى
                </p>
            </div>
            <div class="page-body">
                <ul class="main-page-ul">
                    @if($doctors)
                        @foreach($doctors as $doctor)
                            <li>
                                <a href="{{'doctors/' . $doctor->specialist->url . '/' . $doctor->url }}">
                                    <div class="img-div">
                                        <img src="{{asset($doctor->image_id ? $doctor->image->path : '')}}" alt="{{$doctor->image->alt}}">
                                    </div>
                                    <div class="body">
                                        <div class="name">
                                            <img src="{{asset('website/images/icons/idoctor.svg')}}" alt="img">
                                            <span>
                                                {{$doctor->{'clinic_'.currentLang()}->name }}
                                            </span>
                                        </div>
                                        <div class="job-description">
                                            <p>
                                                {{$doctor->specialist->{'specialist_'.currentLang()}->name }}
                                            </p>
                                        </div>
                                        <div class="read-more">
                                            <span>
                                                اقرأ المزيد
                                            </span>
                                            <i class="linearicons-chevron-left"></i>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        @endforeach
                    @endif
                </ul>

                <!-- start pagination -->
                <ul class="pagination-ul">
                    <li>
                        <a href="#">
                            <span>
                                <i class="feather icon-chevrons-right"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="active-page">
                            <span>
                                1
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>
                                2
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>
                                3
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>
                                <i class="feather icon-chevrons-left"></i>
                            </span>
                        </a>
                    </li>
                </ul>
                <!-- end pagination -->
            </div>
        </div>
    </div>
    <!-- end home doctors section -->

@endsection
