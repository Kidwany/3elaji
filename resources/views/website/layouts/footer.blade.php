<!-- start all footer -->
<footer>
    <div class="top-footer">
        <div class="container">

            <div class="section-one">
                <div class="section-body">
                    <a href="{{url('/')}}" class="logo-img">
                        <img src="{{asset($setting->image->path)}}" alt="img">
                    </a>
                    <div class="text">
                        <p>
                            {{$about->{'about_'.currentLang()}->description }}
                        </p>
                    </div>
                </div>
            </div>
            <div class="section-two">
                <div class="section-heading">
                    <p>
                        لينكات سريعة
                    </p>
                </div>
                <div class="section-body">
                    <ul class="main-section-ul">
                        <li>
                            <a href="{{url('/')}}">
                                <span>
                                    الرئيسية
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="{{url('/doctors')}}">
                                <span>
                                    الأطباء
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="{{url('/centers')}}">
                                <span>
                                    مراكز طبية
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="{{url('/radiology')}}">
                                <span>
                                    مراكز أشعة
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="{{url('/labs')}}">
                                <span>
                                    مراكز تحاليل
                                </span>
                            </a>
                        </li>
                        {{--<li>
                            <a href="./gallery.html">
                                <span>
                                    معرض الصور
                                </span>
                            </a>
                        </li>--}}
                        <li>
                            <a href="{{url('blog')}}">
                                <span>
                                    المدونة
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="section-three">
                <div class="section-heading">
                    <p>
                        اتصل بنا
                    </p>
                </div>
                <div class="section-body">
                    <ul class="main-section-ul contacts-wrapper">
                        <li>
                            <div class="phone">
                                <span>
                                    الهاتف
                                </span>
                                <div>
                                    <i class="ion-ios-telephone-outline"></i>
                                    <p>
                                        {{$contact->phone}}
                                    </p>
                                </div>
                            </div>
                            <div class="address">
                                <span>
                                    الموقع
                                </span>
                                <div>
                                    <i class="ion-android-pin"></i>
                                    <p>
                                        {{$contact->{'address_'.currentLang()}  }}}
                                    </p>
                                </div>
                            </div>
                            <div class="email">
                                <span>
                                    البريد الإلكترونى
                                </span>
                                <div>
                                    <i class="ion-ios-email-outline"></i>
                                    <p>
                                       {{$contact->email}}
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="section-four">
                <div class="section-heading">
                    <p>
                        النشرة الإخبارية
                    </p>
                    <p>
                        اشترك فى نشرتنا الإخبارية
                    </p>
                </div>
                <div class="section-body">
                    <div class="news-letter">
                        <form action="">
                            <input type="email" placeholder="البريد الإلكترونى">
                            <button type="submit">إشترك</button>
                        </form>
                    </div>

                    <ul class="social-links">
                        @if($contact->facebook)
                            <li>
                                <a href="{{url($contact->facebook)}}">
                                    <i class="feather icon-facebook"></i>
                                </a>
                            </li>
                        @endif
                        @if($contact->twitter)
                            <li>
                                <a href="{{url($contact->twitter)}}">
                                    <i class="feather icon-twitter"></i>
                                </a>
                            </li>
                        @endif
                        @if($contact->instagram)
                            <li>
                                <a href="{{url($contact->instagram)}}">
                                    <i class="feather icon-instagram"></i>
                                </a>
                            </li>
                        @endif
                        @if($contact->youtube)
                            <li>
                                <a href="{{url($contact->youtube)}}">
                                    <i class="feather icon-youtube"></i>
                                </a>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="bottom-footer">
        <div class="container">
            <p>
                <!-- 2019 &copy; جميع الحقوق محفوظة لشركة بى جروب -->
                2019 &copy Begroup All rights reserved
            </p>
        </div>
    </div>
</footer>
<!-- end all footer -->
