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
            Clinics Pages
            <small>All Clinics Pages</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/website-clinics-pages')}}"> Website Clinics Pages</a></li>
            <li class="active">All Clinics Pages</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Clinics Info</h3>
                        <a href="{{adminUrl('clinic/create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add New Clinic </a>
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>URL</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>URL</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>

                        @if($pages)
                            @foreach($pages as $page)
                                @if($page->clinic)
                                    <tr>
                                        <td>{{$page->id}}</td>
                                        <td>{{$page->clinic->clinic_en->name}} </td>
                                        <td>{{$page->clinic->url}}</td>
                                        <td>{{$page->created_at->diffForHumans()}}</td>
                                        <td>{{$page->updated_at->diffForHumans()}}</td>
                                        <td>
                                            <a href="{{adminUrl('seo/website-page/edit/'.$page->id )}}" class style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>

                                        </td>
                                    </tr>
                                @endif
                            @endforeach
                        @endif


                        </tbody>
                    </table>

                    <div class="modal modal-danger fade" id="delete">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Delete User</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Are You Sure You Want To Delete User <strong></strong></p>
                                </div>
                                <div class="modal-footer">
                                    <form action="{{route('slider.destroy', 5)}}" method="post">
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
                    <!-- /.modal -->

                </div>
            </div>
        </div>
    </section>

@endsection
