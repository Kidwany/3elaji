@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
    <link rel="stylesheet" href="{{assetPath('dashboard/css/bootstrap3-wysihtml5.min.css')}}">
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script src="{{assetPath('dashboard/js/bootstrap3-wysihtml5.all.min.js')}}"></script>
    <script>
        //Initialize Select2 Elements
        //$('.select2').select2()

        /*$('.textarea').wysihtml5()
        $('.textarea_ar').wysihtml5()*/
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Clinic
            <small>Add New Clinic</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/clinic')}}">Clinic</a></li>
            <li class="active">Add Clinic</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('clinic.store')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Update Clinic Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Clinic Name</label>
                                    <input type="text" class="form-control" name="name_en" id="exampleInputEmail1" placeholder="Enter Clinic Name" value="{{old('name_en')}}">
                                    <p class="help-block">Enter Clinic, center or doctor Name</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> URL</label>
                                    <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter Clinic URL" value="{{old('url')}}">
                                    <p class="help-block">Enter Name of Clinic which will be show in url</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Video URL</label>
                                    <input type="url" class="form-control" name="video_url" id="exampleInputEmail1" placeholder="Enter Youtube Video URL" value="{{old('video_url')}}">
                                    <p class="help-block">Enter Youtube Video URL IF Exist</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Clinic Type</label>
                                    <select name="type" id="admin_type" class="form-control">
                                        <option value="0">Choose Clinic Type</option>
                                        @if($clinic_types)
                                            @foreach($clinic_types as $clinic_type)
                                                <option value="{{$clinic_type->id}}">{{$clinic_type->clinic_type_en->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="help-block">Choose Type of Clinic or center</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Clinic Specialist</label>
                                    <select name="specialist" id="admin_type" class="form-control">
                                        <option value="">Choose Clinic Specialist</option>
                                        @if($specialists)
                                            @foreach($specialists as $specialist)
                                                <option value="{{$specialist->id}}">{{$specialist->specialist_en->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="help-block">Choose Type of Clinic or center</p>
                                </div>

                                <div class="col-lg-12 mt-5">
                                    <label for="exampleInputEmail1">Clinic Description</label>
                                    <textarea class="textarea" placeholder="Enter Clinic Description" name="description_en"
                                              style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{old('description_en')}}</textarea>
                                    <p class="help-block">Describe The Clinic</p>
                                </div>


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Image</label>
                                    <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter button text">
                                    <p class="help-block"> Upload Main Image of Clinic which will be shown as thumbnail</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Alt Text</label>
                                    <input type="text" class="form-control" name="alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{old('alt')}}">
                                    <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                                </div>


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Multiple Images</label>
                                    <input type="file" class="form-control" name="images[]" multiple id="exampleInputEmail1" placeholder="Enter button text">
                                    <p class="help-block">Upload Many Images for clinic if exist</p>
                                </div>



                            </div>
                        </div>
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Update Clinic Contact Info</h3>
                            </div>

                            <div class="col-lg-12 mb-5">
                                <label for="exampleInputEmail1">Phone</label>
                                <input type="text" class="form-control" name="phone" id="exampleInputEmail1" placeholder="Enter Phone Number" value="{{old('phone')}}">
                                <p class="help-block">Enter Clinic Phone</p>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <div class="box-body">
                                <div class="form-group">

                                    <div class="col-lg-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-facebook-square"></i> Facebook</span>
                                            <input type="url" class="form-control" placeholder="Facebook Page URL" name="facebook" value="{{old('facebook')}}">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-twitter-square"></i>Twitter</span>
                                            <input type="url" class="form-control" placeholder="Twitter Page URL" name="twitter" value="{{old('twitter')}}">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-instagram"></i> Instagram</span>
                                            <input type="url" class="form-control" placeholder="Instagram Page URL" name="instagram" value="{{old('instagram')}}">
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-whatsapp"></i> Whatsapp</span>
                                            <input type="url" class="form-control" placeholder="Instagram Page URL" name="whatsapp" value="{{old('whatsapp')}}">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Arabic Side -->
                <div class="col-md-6 arab_dir">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">أضف بيانات العيادة او المركز الطبي</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">اسم العيادة</label>
                                    <input type="text" class="form-control" name="name_ar" id="exampleInputEmail1" placeholder="ادخل اسم العيادة" value="{{old('name_ar')}}">
                                    <p class="help-block">ادخل اسم العيادة، المركز الطبي، مركز الأشعة الخ...</p>
                                </div>

                                <div class="col-lg-12 mt-5">
                                    <label for="exampleInputEmail1">وصف العيادة</label>
                                    <textarea class="textarea_ar" placeholder="ادخل وصف العيادة" name="description_ar"
                                              style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{old('description_ar')}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا للعيادة</p>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
