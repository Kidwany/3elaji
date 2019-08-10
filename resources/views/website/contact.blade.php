@extends('website.layouts.layouts')
@section('title', 'اتصل بنا')
@section('content')

    <!-- contact us page -->
    <div class="contact-page">
        <div class="container">
            <div class="page-body">
                <ul class="branches">
                    <li>
                        <div class="branch-heading">
                            <p>
                                {{$contact->{'address_'.currentLang()} }}
                            </p>
                        </div>
                        <div class="working-hours-phones">
                            <div class="working-hours">
                                <ul class="week-days">
                                    <li>
                                        <span>
                                            السبت
                                        </span>
                                        <span>
                                            8ص : 9 م
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الأحد
                                        </span>
                                        <span>
                                            8ص : 9 م
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الإثنين
                                        </span>
                                        <span>
                                            8ص : 9 م
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الثلاثاء
                                        </span>
                                        <span>
                                            8ص : 9 م
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الأربعاء
                                        </span>
                                        <span>
                                            8ص : 9 م
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الخميس
                                        </span>
                                        <span>
                                            مغلق
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            الجمعة
                                        </span>
                                        <span>
                                            مغلق
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <ul class="phones">
                                <li>
                                    <span class="feather icon-phone-call"></span>
                                    <span>
                                        {{$contact->phone_alt}}
                                    </span>
                                </li>
                                <li>
                                    <span class="feather icon-phone-call"></span>
                                    <span>
                                        {{$contact->phone}}
                                    </span>
                                </li>
                            </ul>
                        </div>
                        <div class="location">
                            <span class="feather icon-map-pin"></span>
                            <span>
                                {{$contact->{'address_'.currentLang()} }}
                            </span>
                        </div>
                    </li>
                </ul>

                <div class="form-wrapper">
                    <div class="form-heading">
                        <p>
                            تواصل معنا
                        </p>
                    </div>
                    @include('dashboard.layouts.messages')
                    <form action="{{url('message')}}" method="post">
                        @csrf
                        @method('post')
                        <div class="form-div">
                            <input type="text" name="name" placeholder="الإســم*" value="{{old('name')}}">
                            <div class="thin-line"></div>
                        </div>
                        <div class="form-div">
                            <input type="email" name="email" placeholder="البريد الإلكترونى*" value="{{old('email')}}">
                            <div class="thin-line"></div>
                        </div>
                        <div class="form-div">
                            <input type="text" name="phone" placeholder="رقم الهاتف*" value="{{old('phone')}}">
                            <div class="thin-line"></div>
                        </div>
                        <div class="form-div">
                            <input type="text" name="title" id="" placeholder="عنوان الرسالة* " value="{{old('title')}}">
                            <div class="thin-line"></div>
                        </div>
                        <div class="form-div">
                            <textarea name="message" placeholder="نص الرسالة">{{old('message')}}</textarea>
                            <div class="thin-line"></div>
                        </div>
                        <button type="submit">
                            <span class="feather icon-send"></span>
                            <span>
                                الرسالة
                            </span>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- contact us page -->

@endsection
