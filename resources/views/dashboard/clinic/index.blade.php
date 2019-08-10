@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging'      : true,
                'lengthChange': true,
                'searching'   : true,
                'ordering'    : true,
                'info'        : true,
                'autoWidth'   : false
            })
        })
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Clinic
            <small>All Clinics</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/clinic')}}">Clinic</a></li>
            <li class="active">All Clinics</li>
        </ol>
    </section>



    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Users Info</h3>
                        <a href="{{adminUrl('clinic/create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add New Clinic </a>
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <table  id="example1" class="table table-bordered table-striped show-edit-category-table">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Type</th>
                            <th>Specialist</th>
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Type</th>
                            <th>Specialist</th>
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        @if($clinics)
                            @foreach($clinics as $clinic)
                                <tr>
                                    <td>{{$clinic->id}}</td>
                                    <td><img src="{{$clinic->image_id ? assetPath($clinic->image->path) :  asset('dashboard/img/picture.png')}}" style="width: 50px" alt="{{$clinic->image->alt}}" > </td>
                                    <td>{{$clinic->clinic_en->name ? $clinic->clinic_en->name : ''}}</td>
                                    <td>{{$clinic->contact ? $clinic->contact->phone : ''}}</td>
                                    <td>{{$clinic->clinic_type_id ? $clinic->clinic_type->clinic_type_en->name : ''}}</td>
                                    <td>{{$clinic->specialist_id ? $clinic->specialist->specialist_en->name : ''}}</td>
                                    <td>{{$clinic->createdBy->name}}</td>
                                    <td>{{$clinic->created_at->diffForHumans()}}</td>
                                    <td>{{$clinic->updated_at->diffForHumans()}}</td>
                                    <td>
                                        <a href="{{adminUrl('clinic/clinic-images/'.$clinic->id)}}" class style="font-size: 20px"><i class="fa fa-image"></i> </a>
                                        <a href="{{route('clinic.edit', $clinic->id)}}" class style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
                                        <button type="button" class data-toggle="modal" data-target="#delete{{$clinic->id}}" style="font-size: 20px">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>


                    @if($clinics)
                        @foreach($clinics as $clinic)
                            <div class="modal modal-danger fade" id="delete{{$clinic->id}}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Delete User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are You Sure You Want To Delete Clinic <strong>{{$clinic->clinic_en->name ? $clinic->clinic_en->name : ''}}</strong></p>
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{route('clinic.destroy', $clinic->id)}}" method="post">
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
                    <!-- /.modal -->

                </div>
            </div>
        </div>
    </section>

@endsection
