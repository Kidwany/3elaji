<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{assetPath('dashboard//img/user2-160x160.jpg')}}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        {{--<form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
            </div>
        </form>--}}
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> <span>Statistics</span></a></li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Blog</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('blog/create')}}"><i class="fa fa-plus"></i> Add Blog</a></li>
                    <li><a href="{{adminUrl('blog')}}"><i class="fa fa-edit"></i> Show / Edit Slide</a></li>
                </ul>
            </li>


            <li class="treeview">
                <a href="#">
                    <i class="fa fa-heartbeat"></i>
                    <span>Specialist</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('specialist/create')}}"><i class="fa fa-plus"></i> Add Specialist</a></li>
                    <li><a href="{{adminUrl('specialist')}}"><i class="fa fa-edit"></i> Show / Edit Specialist</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-stethoscope"></i>
                    <span>Clinic</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('clinic/create')}}"><i class="fa fa-plus"></i> Add Clinic</a></li>
                    <li><a href="{{adminUrl('clinic')}}"><i class="fa fa-edit"></i> Show / Edit Clinic</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-pie-chart"></i> <span>SEO</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="treeview">
                        <a href="#"><i class="fa fa-desktop"></i> Website Pages
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="{{adminUrl('seo/website-pages?type=main')}}"><i class="fa fa-bar-chart"></i> Main Pages</a></li>
                            <li><a href="{{adminUrl('seo/website-pages?type=clinics')}}"><i class="fa fa-stethoscope"></i> Clinics Pages</a></li>
                            <li><a href="{{adminUrl('seo/website-pages?type=articles')}}"><i class="fa fa-file-text"></i> Articles Pages</a></li>

                            {{--<li class="treeview">
                                <a href="#"><i class="fa fa-stethoscope"></i> Clinics Pages
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                --}}{{--<ul class="treeview-menu">
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                </ul>--}}{{--
                            </li>--}}

                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-desktop"></i> Open Graph Tags
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="{{adminUrl('seo/open-graph?type=main')}}"><i class="fa fa-bar-chart"></i> Main Pages open graphs</a></li>
                            <li><a href="{{adminUrl('seo/open-graph?type=clinics')}}"><i class="fa fa-stethoscope"></i> Clinics open graphs</a></li>
                            <li><a href="{{adminUrl('seo/open-graph?type=articles')}}"><i class="fa fa-file-text"></i> Articles open graphs</a></li>
                        </ul>
                    </li>

                    <li><a href="{{adminUrl('seo/same-as')}}"><i class="fa fa-share-alt"></i> Same As URL'S</a></li>
                    <li><a href="{{adminUrl('seo/form')}}"><i class="fa fa-list-alt"></i> Forms</a></li>

                </ul>
            </li>


            <li class="treeview">
                <a href="#">
                    <i class="fa fa-image"></i>
                    <span>Slider</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('slider/create')}}"><i class="fa fa-plus"></i> Add Slider</a></li>
                    <li><a href="{{adminUrl('slider')}}"><i class="fa fa-edit"></i> Show / Edit Slide</a></li>
                </ul>
            </li>


            <li class="treeview">
                <a href="#">
                    <i class="fa fa-envelope"></i>
                    <span>Messages</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('message')}}"><i class="fa fa-edit"></i> Show Inbox</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>About</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('about/edit')}}"><i class="fa fa-edit"></i> Edit About Website</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-phone"></i>
                    <span>Contact</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('contact/edit')}}"><i class="fa fa-edit"></i> Edit Contact Info</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cogs"></i>
                    <span>Setting</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('setting/edit')}}"><i class="fa fa-edit"></i> Edit Website Setting</a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
