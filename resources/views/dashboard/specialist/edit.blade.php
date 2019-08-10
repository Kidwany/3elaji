@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        //Initialize Select2 Elements
        $('.select2').select2()
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Specialty
            <small>Update specialty</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('specialist')}}">specialty</a></li>
            <li class="active">Update specialty</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('specialist.update', $specialist->id)}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Update specialty Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> URL</label>
                                    <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter specialty URL" value="{{$specialist->url}}">
                                    <p class="help-block">Enter Url of specialty which will be shown in url</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Specialty Name</label>
                                    <input type="text" class="form-control" name="name_en" id="exampleInputEmail1" placeholder="Enter Specialty Name" value="{{$specialist->specialist_en->name}}">
                                    <p class="help-block">Enter Specialty Name</p>
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
                            <h3 class="box-title">أضف بيانات التخصص</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> اسم التخصص</label>
                                    <input type="text" class="form-control" name="name_ar" id="exampleInputEmail1" placeholder="ادخل اسم التخصص" value="{{$specialist->specialist_ar->name}}">
                                    <p class="help-block">أضف اسم التخصص</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
