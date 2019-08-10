@extends('website.layouts.layouts')
@section('title', 'الرئيسية')
@section('content')

    <!-- start home main slider -->
    <div class="swiper-container home-main-slider">
        <div class="swiper-wrapper">
            @if($slides)
                @foreach($slides as $slide)
                    <div class="swiper-slide">
                        <div class="slider-img">
                            <img src="{{$slide->image_id ? asset($slide->image->path) : ''}}" alt="{{$slide->image_id ? $slide->image->alt : 'slider-image'}}">
                        </div>
                        <div class="slider-text">
                            <div class="text-buttons">
                                <div class="text">
                                    <p>
                                        {{$slide->{'slider_'.currentLang()}->title}}
                                    </p>
                                    <p>
                                        {{$slide->{'slider_'.currentLang()}->description}}
                                    </p>
                                </div>
                                <div class="buttons">
                                    <a href=" {{$slide->url}}">
                                        <i class="linearicons-finger-tap2"></i>
                                        <span>
                                     {{$slide->{'slider_'.currentLang()}->button}}
                                </span>
                                    </a>
                                    <a href="{{url('about')}}">
                                        <i class="linearicons-pushpin"></i>
                                        <span>
                                    عن علاجى
                                </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>

        <!-- rtl code -->
        <div class="swiper-button-prev home-main-slider-prev">
            <span class="ion-android-arrow-forward"></span>
        </div>
        <div class="swiper-button-next home-main-slider-next">
            <span class="ion-android-arrow-back"></span>
        </div>
        <!-- rtl code -->

        <!-- ltr code -->
        <!-- <div class="swiper-button-next home-main-slider-next">
          <span class="ion-android-arrow-forward"></span>
        </div>
        <div class="swiper-button-prev home-main-slider-prev">
          <span class="ion-android-arrow-back"></span>
        </div> -->
        <!-- ltr code -->

        <div class="swiper-pagination home-main-slider-pagination"></div>
    </div>
    <!-- end home main slider -->


    <!-- start home about section -->
    <div class="home-about-section">
        <div class="first-section">
            <div class="text">
                <div class="heading">
                    <p>
                        عن علاجى
                    </p>
                </div>
                <div class="body">
                    <p>
                        {{$about->{'about_'. currentLang()}->description }}}
                    </p>
                </div>
            </div>
            <div class="ceo">
                <div class="img-div">
                    <img src="{{asset('website/images/ceo/ceo.jpg')}}" alt="img">
                </div>
                <div class="dr-name-title-brief">
                    <p>
                        د. محمود فهمى
                    </p>
                    <p>
                        <i class="linearicons-pulse"></i>
                        رئيس الأطباء
                    </p>
                    <div class="brief">
                        <div class="quote-wrapper">
                            <svg width="42px" height="30px">
                                <defs>
                                    <filter>
                                        <feFlood flood-color="rgb(142, 160, 191)" flood-opacity="1"
                                                 result="floodOut"></feFlood>
                                    </filter>
                                </defs>
                                <g>
                                    <path fill-rule="evenodd"
                                          d="M19.204,20.825 C19.204,23.436 18.258,25.621 16.367,27.377 C14.479,29.128 12.245,30.007 9.667,30.007 C7.093,30.007 4.837,29.128 2.901,27.377 C0.968,25.621 0.004,23.516 0.004,21.071 C0.004,18.619 1.164,15.641 3.482,12.129 L11.215,0.008 L18.691,0.008 L13.920,12.745 C17.442,14.292 19.204,16.989 19.204,20.825 ZM41.993,20.825 C41.993,23.436 41.047,25.621 39.156,27.377 C37.268,29.128 35.034,30.007 32.454,30.007 C29.878,30.007 27.623,29.128 25.689,27.377 C23.757,25.621 22.789,23.516 22.789,21.071 C22.789,18.619 23.953,15.641 26.270,12.129 L34.004,0.008 L41.474,0.008 L36.709,12.745 C40.230,14.292 41.993,16.989 41.993,20.825 Z">
                                    </path>
                                </g>
                            </svg>
                        </div>
                        <p>
                            أنا متخصص في طب البطنة ولدي 20 عامًا من الخبرة مدربة في تشخيص وعلاج مشاكل السمنة والنحافة.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="second-section">
            <ul>
                <li>
                    <div class="li-div">
                        <div class="li-icon">
                            <i class="linearicons-book2"></i>
                        </div>
                        <div class="li-heading">
                            <p>
                                اسهل طرق الحجز
                            </p>
                        </div>
                        <div class="li-text">
                            <p>
                                احجز موعدك فى اقل من دقيقة
                            </p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="li-div">
                        <div class="li-icon">
                            <i class="linearicons-users2"></i>
                        </div>
                        <div class="li-heading">
                            <p>
                                فريق طبى مؤهل
                            </p>
                        </div>
                        <div class="li-text">
                            <p>
                                15 عاما من الخبرة
                            </p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="li-div">
                        <div class="li-icon">
                            <i class="linearicons-calendar-check"></i>
                        </div>
                        <div class="li-heading">
                            <p>
                                جدول مواعيد مرن
                            </p>
                        </div>
                        <div class="li-text">
                            <p>
                                اطباءنا متاحون دائما
                            </p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="li-div">
                        <div class="li-icon">
                            <i class="linearicons-shield-check"></i>
                        </div>
                        <div class="li-heading">
                            <p>
                                ضمان أفضل الأسعار
                            </p>
                        </div>
                        <div class="li-text">
                            <p>
                                لا توجد أسعار مبالغ فيها
                            </p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- end home about section -->


    <!-- start home doctors section -->
    <div class="home-doctors-section">
        <div class="section-wrapper">
            <div class="section-heading">
                <p>
                    أطباء علاجى
                </p>
                <a href="{{url('doctors')}}">
                    <i class="linearicons-link2"></i>
                    <span>
                        جميع الأطباء
                    </span>
                </a>
            </div>
            <div class="section-body">
                <ul class="main-section-ul">

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
            </div>
        </div>
    </div>
    <!-- end home doctors section -->

    <!-- start home medical cneters section -->
    <div class="home-centers-section">
        <div class="section-wrapper">
            <div class="section-heading">
                <p>
                    مراكز طبية
                </p>
                <a href="{{url('centers')}}">
                    <i class="linearicons-link2"></i>
                    <span>
                        جميع المراكز الطبية
                    </span>
                </a>
            </div>
            <div class="section-body">
                <ul class="main-section-ul">
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
            </div>
        </div>
    </div>
    <!-- end home medical centers section -->

    <!-- start home radiology cneters section -->
    <div class="home-centers-section">
        <div class="section-wrapper">
            <div class="section-heading">
                <p>
                    مراكز أشعة
                </p>
                <a href="{{url('radiology')}}">
                    <i class="linearicons-link2"></i>
                    <span>
                        جميع مراكز الأشعة
                    </span>
                </a>
            </div>
            <div class="section-body">
                <ul class="main-section-ul">
                    @if($radiologies)
                        @foreach($radiologies as $radiology)
                        <li>
                            <a href="{{'radiology/' . $radiology->specialist->url . '/' . $radiology->url }}">
                                <div class="img-div">
                                    <img src="{{asset($radiology->image_id ? $radiology->image->path : '')}}" alt="{{$radiology->image->alt}}">
                                </div>
                                <div class="body">
                                    <div class="name">
                                        <i class="linearicons-apartment"></i>
                                        <span>
                                           {{$radiology->{'clinic_'.currentLang()}->name }}
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
            </div>
        </div>
    </div>
    <!-- end home radiology centers section -->

    <!-- start home analytical labs section -->
    <div class="home-centers-section">
        <div class="section-wrapper">
            <div class="section-heading">
                <p>
                    معامل تحاليل
                </p>
                <a href="{{url('labs')}}">
                    <i class="linearicons-link2"></i>
                    <span>
                        جميع معامل التحاليل
                    </span>
                </a>
            </div>
            <div class="section-body">
                <ul class="main-section-ul">
                    @if($labs)
                        @foreach($labs as $lab)
                            <li>
                                <a href="{{'labs/' . $lab->url }}">
                                    <div class="img-div">
                                        <img src="{{asset($lab->image_id ? $lab->image->path : '')}}" alt="{{$lab->image->alt}}">
                                    </div>
                                    <div class="body">
                                        <div class="name">
                                            <i class="linearicons-apartment"></i>
                                            <span>
                                                {{$lab->{'clinic_'.currentLang()}->name }}
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
            </div>
        </div>
    </div>
    <!-- end home medical centers section -->

@endsection
