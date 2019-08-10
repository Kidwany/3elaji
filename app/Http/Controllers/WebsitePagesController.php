<?php

namespace App\Http\Controllers;

use App\About;
use App\Client;
use App\Contact;
use App\Gallery;
use App\Image;
use App\Models\Message;
use App\Models\Blog;
use App\Models\Clinic;
use App\Service;
use App\Models\Slider;
use App\Testimonial;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class WebsitePagesController extends Controller
{
    public function index()
    {
        $slides = Slider::with('slider_'.currentLang(), 'image')->get();
        $doctors = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 2)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        $centers = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 3)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        $labs = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 4)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        $radiologies = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 1)->limit(4)
            ->orderBy('created_at', 'desc')->get();

        return view('website.welcome', compact( 'slides', 'doctors', 'centers', 'labs', 'radiologies'));
    }

    public function about()
    {
        //$about = About::orderby('id', 'desc')->first();
        return view('website.about');
    }

    public function gallery()
    {
        $images = Gallery::with('image')->get();
        return view('website.gallery', compact( 'images'));
    }

    public function albums($id)
    {
        $album = Album::find($id);
        $images =  Image::where('album_id', $id)->get();
        return view('website.albums', compact('album', 'images'));
    }

    public function contact()
    {
        //$contact = Contact::orderby('id', 'desc')->first();
        return view('website.contact');
    }

    public function blog()
    {
        $blogs = Blog::with('blog_'.currentLang(), 'image')->orderBy('created_at', 'desc')->get();
        return view('website.blog', compact('blogs'));
    }


    public function blogDetails($url)
    {
        $blog = Blog::with('blog_en', 'blog_ar', 'page', 'image')->where('url', '=', $url)->first();
        return view('website.blogDetails', compact('blog'));
    }

    public function message(Request $request)
    {
        $input = Input::get();
        $this->validate($request,[
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:14',
            'title'         => 'bail|required|max:150',
            'name'          => 'bail|required|max:100',
            'message'       => 'bail|required|min:30|max:500',
        ], [], [
            'email'         => 'Email',
            'phone'         => 'Phone',
            'name'          => 'Name ',
            'message'       => 'Message',
        ]);

        $message = new Message;
        $message->name = $input['name'];
        $message->email = $input['email'];
        $message->phone = $input['phone'];
        $message->title = $input['title'];
        $message->message = $input['message'];

        $message->save();
        Session::flash('create', ' شكرا على تسجيلك ' . $message->name .  ' سنقوم بالتواصل معك خلال يومين عمل ');

        return redirect('contact');
    }


    public function doctors()
    {
        $doctors = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 2)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        return view('website.doctor', compact('doctors'));
    }

    public function doctorDetails($doctorSpeciality, $url)
    {
        return view('website.doctorDetails');
    }

    public function centers()
    {
        $centers = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 3)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        return view('website.center', compact('centers'));
    }


    public function centerDetails()
    {
        return view('website.centerDetails');
    }


    public function radiology()
    {
        $radiologies = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 1)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        return view('website.radiology', compact('radiologies'));
    }


    public function radiologyDetails($speciality, $url)
    {
        $radiology = Clinic::with('clinic_'.currentLang(), 'images', 'image', 'contact')->where('url', '=', $url)->first();
        return view('website.radiologyDetails', compact('radiology'));
    }


    public function labs()
    {
        $labs = Clinic::with('clinic_'.currentLang(), 'image', 'specialist')
            ->where('clinic_type_id', '=', 4)->limit(4)
            ->orderBy('created_at', 'desc')->get();
        return view('website.lab', compact('labs'));
    }

    public function labDetails($url)
    {
        $lab = Clinic::with('clinic_en', 'clinic_ar', 'page', 'image', 'images')
            ->where('url', '=', $url)->firstOrFail();
        return view('website.labDetails', compact('lab'));
    }


}

























