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
            Clinics Pages Open Graphs
            <small>All Clinics Pages Open Graphs</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/seo/clinics-pages-open-graph')}}"> Clinics Pages Open Graphs</a></li>
            <li class="active">All main-pages-open-graph</li>
        </ol>
    </section>


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Clinics Pages Open Graphs Info</h3>
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>og:image</th>
                            <th>og:url</th>
                            <th>og:title</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>og:image</th>
                            <th>og:url</th>
                            <th>og:title</th>
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
                                        {{--<td><img src="{{$page->open_graph->og_image ? assetPath($page->open_graph->open_graph_image->path) : asset('dashboard/img/picture.png')}}" style="width: 50px" alt="og:image" > </td>--}}
                                        <td><img src="{{$page->open_graph->image_url ? $page->open_graph->image_url  : assetPath($page->open_graph->open_graph_image->path)}}" style="width: 50px" alt="og_image" > </td>
                                        <td>{{$page->open_graph->og_url}}</td>
                                        <td>{{$page->open_graph->og_title}}</td>
                                        <td>{{$page->open_graph->created_at->diffForHumans()}}</td>
                                        <td>{{$page->open_graph->updated_at->diffForHumans()}}</td>
                                        <td>
                                            <a href="{{adminUrl('seo/main-pages-open-graph/edit/'.$page->id)}}" class style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
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
