@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
<!-- Drop Your Customized Style Here -->
@section('customizedStyle')
@endsection
<!-- Drop Your Customized Scripts Here -->
@section('customizedScript')
@endsection
<!-- Start of content section -->
@section('content')


    <section class="content-header">
        <h1>
            Clinic
            <small>Update Clinic Images</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('clinic')}}">Clinic</a></li>
            <li class="active">Update Clinic Images</li>
        </ol>
    </section>

    <section class="content container-fluid">
        @include('dashboard.layouts.messages')
        <div class="images-wrapper">
            <ul>
                @if($clinic->images)
                    @foreach($clinic->images as $image)
                        <li>
                            <div class="remove-btn modal-btn" data-toggle="modal" data-target="#delete{{$image->id}}">
                                <i class="ion-ios-close-empty"></i>
                            </div>
                            <img src="{{assetPath($image->path)}}" alt="clinic-image">
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>

        @if($clinic->images)
            @foreach($clinic->images as $image)
                <div class="modal modal-danger fade" id="delete{{$image->id}}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Delete Image</h4>
                            </div>
                            <div class="modal-body">
                                <p>Are You Sure You Want To Delete Clinic Image</p>
                            </div>
                            <div class="modal-footer">
                                <form action="{{adminUrl('clinic/clinic-images/delete/'.$image->id)}}" method="post">
                                    @method('delete')
                                    @csrf
                                    <div class="d-flex flex-row">
                                        <button type="button" class="btn btn-outline-danger" data-dismiss="modal" style="margin-right: 5px">
                                            cancel
                                        </button>
                                        <button type="submit" class="btn btn-danger">
                                            Delete
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
            @endforeach
        @endif
    </section>

@endsection
