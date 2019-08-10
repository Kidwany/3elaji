@extends('website.layouts.layouts')
@section('title', 'من نحن')
@section('content')

    <!-- about us page -->
    <div class="about-page">
        <div class="page-heading">
            <p>
                عن علاجى
            </p>
        </div>
        <div class="page-body">
            <ul class="main-section-ul">
                <li>
                    <div class="li-img">
                        <img src="{{asset($about->missionImage->path)}}" alt="mission-img">
                    </div>
                    <div class="li-text">
                        <div class="text-heading">
                            <p>
                                مهمتنا
                            </p>
                        </div>
                        <ul class="inside-ul">
                            <li>
                                <span class="linearicons-checkmark-circle"></span>
                                <p>
                                    {{$about->{'about_'.currentLang()}->mission }}
                                </p>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="li-img">
                        <img src="{{asset($about->visionImage->path)}}" alt="img">
                    </div>
                    <div class="li-text">
                        <div class="text-heading">
                            <p>
                                رؤيتنا
                            </p>
                        </div>
                        <ul class="inside-ul">
                            <li>
                                <span class="linearicons-checkmark-circle"></span>
                                <p>
                                    {{$about->{'about_'.currentLang()}->vision }}
                                </p>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="li-img">
                        <img src="{{asset($about->valuesImage->path)}}" alt="img">
                    </div>
                    <div class="li-text">
                        <div class="text-heading">
                            <p>
                                قيمنا
                            </p>
                        </div>
                        <ul class="inside-ul">
                            <li>
                                <span class="linearicons-checkmark-circle"></span>
                                <p>
                                    {{$about->{'about_'.currentLang()}->value }}
                                </p>
                            </li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- about us page -->

@endsection
