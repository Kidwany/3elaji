<!-- start header -->
<div class="header-md">
    <div class="logo-lines">
        <div class="container">
            <div class="lines hamburger hamburger--elastic">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>
            <div class="logo-img">
                <a href="{{url('/')}}">
                    <img src="{{asset($setting->image->path)}}" alt="logo">
                </a>
            </div>
        </div>
    </div>

    <div class="main-header-md-ul-div">
        <ul class="main-header-md-ul">
            <li class="active-li">
                <a href="{{url('/')}}">
                    <span>
                        الرئيسية
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('doctors')}}">
                    <span>
                        الأطباء
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('centers')}}">
                    <span>
                        مراكز طبية
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('radiology')}}">
                    <span>
                        مراكز أشعة
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('labs')}}">
                    <span>
                        معامل تحاليل
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('about')}}">
                    <span>
                        عن علاجى
                    </span>
                </a>
            </li>
            <li>
            <li>
                <a href="{{url('blog')}}">
                    <span>
                        المدونة
                    </span>
                </a>
            </li>
            <li>
                <a href="{{url('contact')}}">
                    <span>
                        تواصل معنا
                    </span>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="header-lg">
    <div class="header-lg-top">
        <div class="container">
            <ul class="social-ul">
                @if($contact->facebook)
                    <li>
                        <a href="{{$contact->facebook}}">
                            <i class="ion-social-facebook-outline"></i>
                        </a>
                    </li>
                @endif
                @if($contact->twitter)
                    <li>
                        <a href="{{$contact->twitter}}">
                            <i class="ion-social-twitter-outline"></i>
                        </a>
                    </li>
                @endif
                @if($contact->youtube)
                    <li>
                        <a href="{{$contact->youtube}}">
                            <i class="ion-social-youtube-outline"></i>
                        </a>
                    </li>
                @endif
                @if($contact->linkedin)
                    <li>
                        <a href="{{$contact->linkedin}}">
                            <i class="ion-social-linkedin-outline"></i>
                        </a>
                    </li>
                @endif
                @if($contact->instagram)
                    <li>
                        <a href="{{$contact->instagram}}">
                            <i class="ion-social-instagram-outline"></i>
                        </a>
                    </li>
                @endif
            </ul>
            <div class="phone-email">
                <div class="phone">
                    <i class="ion-ios-telephone-outline"></i>
                    <span>{{$contact->phone}}</span>
                </div>
                <div class="email">
                    <i class="ion-ios-email-outline"></i>
                    <span>{{$contact->email}}</span>
                </div>
            </div>
        </div>
    </div>
    <div class="header-lg-bottom">
        <div class="container">
            <ul class="main-header-lg-ul">
                <li class="active-li">
                    <a href="{{url('/')}}">
                        <span>
                            الرئيسية
                        </span>
                    </a>
                </li>
                <li>
                    <a href="{{url('about')}}">
                        <span>
                            عن علاجى
                        </span>
                    </a>
                </li>
                <li>
                    <a href="{{url('doctors')}}">
                        <span>
                            الأطباء
                        </span>
                    </a>
                </li>
                <li>
                    <a href="{{url('centers')}}">
                        <span>
                            مراكز طبية
                        </span>
                    </a>
                </li>
                <li class="img-li">
                    <a href="{{url('')}}./index.html">
                        <img src="{{asset($setting->image->path)}}" alt="logo-img">
                    </a>
                </li>
                <li>
                    <a href="{{url('radiology')}}">
                        <span>
                            مراكز أشعة
                        </span>
                    </a>
                </li>
                <li>
                    <a href="{{url('labs')}}">
                        <span>
                            مراكز تحاليل
                        </span>
                    </a>
                </li>
                <li>
                    <a href="{{url('blog')}}">
                        <span>
                            المدونة
                        </span>
                    </a>
                </li>
                </li>
                <li>
                    <a href="{{url('contact')}}">
                        <span>
                            تواصل معنا
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- end header -->
