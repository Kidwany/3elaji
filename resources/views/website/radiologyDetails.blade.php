@extends('website.layouts.layouts')
@section('title', 'مراكز الأشعة')
@section('content')




    <!-- start center profile page -->
    <div class="center-profile-page">
        <div class="banner-section">
            <div class="swiper-container banner-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="slider-img">
                            <img src="./images/medical-centers/1.jpg" alt="img">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slider-img">
                            <img src="./images/medical-centers/2.jpg" alt="img">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slider-img">
                            <img src="./images/medical-centers/3.jpg" alt="img">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slider-img">
                            <img src="./images/medical-centers/4.jpg" alt="img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="center-img-contacts">
                <div class="img-div">
                    <img src="./images/medical-centers/2.jpg" alt="img">
                </div>
                <div class="center-contacts">
                    <div class="center-name">
                        <p>
                            مركز المحمود الطبى المتكامل
                        </p>
                    </div>
                    <div class="phone-number">
                        <i class="linearicons-phone-plus"></i>
                        <span>
              010012293812
            </span>
                    </div>
                    <ul class="social-ul">
                        <li>
                            <a href="#">
                                <i class="ion-social-facebook-outline"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="ion-social-twitter-outline"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="ion-social-instagram-outline"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="ion-social-whatsapp-outline"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="details-section">
                <ul class="section-ul">
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              إجراء الموجات الصوتية لتشخيص حالات مرضى القلب
            </span>
                    </li>
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              تركيب منظمات القلب الدائمة والمؤقتة
            </span>
                    </li>
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              توسيع الصمام الرئوي والشرايين التاجية بالقسطرة البالونية
            </span>
                    </li>
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              إجراء القسطرة التشخيصية للشرايين التاجية
            </span>
                    </li>
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              تركيب دعامات القلب
            </span>
                    </li>
                    <li>
                        <i class="linearicons-checkmark-circle"></i>
                        <span>
              تشخيص وعلاج العيوب الخلقية
            </span>
                    </li>
                </ul>
                <div class="video-section">
                    <iframe src="https://www.youtube.com/embed/OG1Uvv6ijpo" frameborder="0"
                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>

                <div class="form-wrapper">
                    <div class="form-heading">
                        <p>
                            تواصل معنا
                        </p>
                    </div>
                    <form action="">
                        <div class="form-div">
                            <input type="text" name="name" placeholder="الإســم*">
                        </div>
                        <div class="form-div">
                            <input type="email" name="email" placeholder="البريد الإلكترونى*">
                        </div>
                        <div class="form-div">
                            <input type="text" name="phone" placeholder="رقم الهاتف*">
                        </div>
                        <div class="form-div">
                            <input type="text" name="subject-title" id="" placeholder="عنوان الرسالة* ">
                        </div>
                        <div class="form-div">
                            <textarea name="message-details" placeholder="نص الرسالة"></textarea>
                        </div>
                        <button type="submit">
                            <span class="feather icon-send"></span>
                            <span>
                أرسل
              </span>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end center profile page -->


@endsection
