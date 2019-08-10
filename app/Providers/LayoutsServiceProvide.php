<?php

namespace App\Providers;

use App\Http\ViewComposers\LayoutsComposer;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class LayoutsServiceProvide extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(
            [
                'website.welcome',
                'website.about',
                'website.contact',
                'website.blog',
                'website.blogDetails',
                'website.center',
                'website.centerDetails',
                'website.lab',
                'website.labDetails',
                'website.doctor',
                'website.doctorDetails',
                'website.radiology',
                'website.radiologyDetails',
            ],
            LayoutsComposer::class
        );
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
