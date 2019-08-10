@extends('website.layouts.layouts')
@section('title', 'المراكز الطبية')
@section('content')

    <!-- start centers page -->
    <div class="centers-page">
        <div class="page-wrapper">
            <div class="page-heading">
                <p>
                    مراكز علاجى الطبية
                </p>
            </div>
            <div class="page-body">
                <ul class="main-page-ul">
                    @if($centers)
                        @foreach($centers as $center)
                            <li>
                                <a href="{{'centers/' . $center->specialist->url . '/' . $center->url }}">
                                    <div class="img-div">
                                        <img src="{{asset($center->image_id ? $center->image->path : '')}}" alt="{{$center->image->alt}}">
                                    </div>
                                    <div class="body">
                                        <div class="name">
                                            <i class="linearicons-apartment"></i>
                                            <span>
                                                {{$center->{'clinic_'.currentLang()}->name }}
                                            </span>
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
    <!-- end home centers section -->

@endsection
