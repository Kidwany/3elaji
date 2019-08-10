<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Clinic;
use App\Models\Clinic_type;
use App\Models\Form;
use App\Models\Image;
use App\Models\Open_graph;
use App\Models\Page;
use App\Models\Specialist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class ClinicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clinics = Clinic::with('clinic_en', 'createdBy', 'image', 'specialist', 'clinic_type', 'contact')->get();
        return view('dashboard.clinic.index', compact('clinics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $specialists = Specialist::with('specialist_en')->get();
        $clinic_types = Clinic_type::all();
        return view('dashboard.clinic.create', compact('specialists', 'clinic_types'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|required|unique:clinic|max:200',
            'name_en'           => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'name_ar'           => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'video_url'         => 'bail|url|max:300',
            'type'              => 'bail|int|required|max:200',
            'specialist'        => 'bail|int|required|max:200',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            'images.*'          => 'mimes:jpeg,jpg,png,gif',
            'alt'               => 'bail|required|max:200',
            'phone'             => 'bail|max:20',
            'facebook'          => 'bail|max:300',
            'twitter'           => 'bail|max:300',
            'instagram'         => 'bail|max:300',
            'whatsapp'          => 'bail|max:300',
        ], [], [

            'url'               => 'URL',
            'name_en'           => 'Name in English',
            'description_en'    => 'Description in English',
            'name_ar'           => 'Name in Arabic',
            'description_ar'    => 'Description in Arabic',
            'video_url'         => 'Video Url',
            'type'              => 'Clinic Type',
            'specialist'        => 'Speciality',
            'image_id'          => 'Main Image',
            'images.*'          => 'Clinic Images',
            'alt'               => 'Alt Text',
            'phone'             => 'Phone',
            'facebook'          => 'Facebook',
            'twitter'           => 'Twitter',
            'instagram'         => 'Instagram',
            'whatsapp'          => 'Whatsapp',
        ]);

        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move(uploadedImagePath() . '/clinic', $fileName);
            $filePath = uploadedImagePath() . '/clinic/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
            $input['image_id'] = $image->id;
        }


        $open_graph = new Open_graph();
        $open_graph->og_title = $input['name_en'];
        $open_graph->og_image = $input['image_id'];
        $open_graph->og_description = $input['description_en'];
        $open_graph->og_url =  $input['url'];
        $open_graph->save();


        $form = new Form();
        $form->name = $input['name_en'];
        //$form->page_id = $page->id;
        $form->save();

        $page = new Page();
        $page->url = $input['url'];
        $page->name = $input['name_en'];
        $page->description = $input['description_en'];
        $page->open_graph_id = $open_graph->id;
        $page->save();



        $clinic = new Clinic();
        $clinic->specialist_id = $input['specialist'];
        $clinic->clinic_type_id = $input['type'];
        $clinic->video_url = $input['video_url'];
        $clinic->image_id = $input['image_id'];
        $clinic->open_graph_id = $open_graph->id;
        $clinic->page_id = $page->id;
        $clinic->form_id = $form->id;
        $clinic->url = $input['url'];
        $clinic->form_id = $form->id;
        $clinic->created_by = $input['created_by'];
        $clinic->save();


        $clinic->clinic_ar()->create(['clinic_id' => $clinic->id, 'name' => $input['name_ar'], 'description' => $input['description_ar']]);
        $clinic->clinic_en()->create(['clinic_id' => $clinic->id, 'name' => $input['name_en'], 'description' => $input['description_en']]);
        $clinic->contact()->create(['clinic_id' => $clinic->id, 'phone' => $input['phone'], 'facebook' => $input['facebook'], 'twitter' => $input['twitter'], 'instagram' => $input['instagram'],  'whatsapp' => $input['whatsapp']]);
        try
        {
            if ($request->hasFile('images'))
            {
                $imagesArray = array();

                foreach ($request->images as $image) {

                    $fileName =  time() . $image->getClientOriginalName();

                    $image->move(uploadedImagePath() . '/clinic', $fileName);

                    $filePath = uploadedImagePath() . '/clinic/' .$fileName;

                    $image = Image::create(['name' => $fileName, 'path' => $filePath]);

                    array_push($imagesArray, $image->id);

                }

                $clinic->images()->attach($imagesArray);
            }
        }

        catch (\Exception $e)
        {
            Session::flash('exception', 'Can\'t Add Images To Album');
            return redirect(adminUrl('clinic'));
        }



        Session::flash('create', 'Clinic Has Been Created Successfully');
        return redirect(adminUrl('clinic'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $clinic = Clinic::with('clinic_en', 'specialist', 'image', 'contact', 'clinic_type')->find($id);
        $specialists = Specialist::with('specialist_en')->get();
        $clinic_types = Clinic_type::all();
        return view('dashboard.clinic.edit', compact('clinic', 'specialists', 'clinic_types'));
    }

    public function clinicImages($id)
    {
        $clinic = Clinic::with('images')->find($id);
        return view('dashboard.clinic.clinicImages', compact('clinic'));
    }

    public function deleteClinicImage($id)
    {
        DB::table('clinic_images')->where('image_id', $id)->delete();
        Session::flash('create', 'Clinic Image Has Been Deleted Successfully');
        return redirect()->back();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $clinic = Clinic::with('clinic_en', 'specialist', 'image', 'contact', 'clinic_type')->find($id);

        $request->validate([
            'url'               => 'bail|max:200',
            'name_en'           => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'name_ar'           => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'video_url'         => 'bail|url|max:300',
            'type'              => 'bail|required|int|max:200',
            'specialist'        => 'bail|required|int|max:200',
            'image_id'          => 'bail|mimes:jpeg,jpg,png,gif',
            'images.*'          => 'mimes:jpeg,jpg,png,gif',
            'alt'               => 'bail|required|max:200',
            'phone'             => 'bail|max:20',
            'facebook'          => 'bail|max:300',
            'twitter'           => 'bail|max:300',
            'instagram'         => 'bail|max:300',
            'whatsapp'          => 'bail|max:300',
        ], [], [

            'url'               => 'URL',
            'name_en'           => 'Name in English',
            'description_en'    => 'Description in English',
            'name_ar'           => 'Name in Arabic',
            'description_ar'    => 'Description in Arabic',
            'video_url'         => 'Video Url',
            'type'              => 'Clinic Type',
            'specialist'        => 'Speciality',
            'image_id'          => 'Main Image',
            'images.*'          => 'Clinic Images',
            'alt'               => 'Alt Text',
            'phone'             => 'Phone',
            'facebook'          => 'Facebook',
            'twitter'           => 'Twitter',
            'instagram'         => 'Instagram',
            'whatsapp'          => 'Whatsapp',
        ]);

        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move(uploadedImagePath() . '/clinic', $fileName);
            $filePath = uploadedImagePath() . '/clinic/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
            $input['image_id'] = $image->id;
            $clinic->image()->update(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
        }

        $clinic->specialist_id = $input['specialist'];
        $clinic->clinic_type_id = $input['type'];
        $clinic->video_url = $input['video_url'];
        $clinic->url = $input['url'];
        $clinic->created_by = $input['created_by'];
        $clinic->save();

        $clinic->clinic_ar()->update(['clinic_id' => $clinic->id, 'name' => $input['name_ar'], 'description' => $input['description_ar']]);
        $clinic->clinic_en()->update(['clinic_id' => $clinic->id, 'name' => $input['name_en'], 'description' => $input['description_en']]);
        $clinic->contact()->update(['clinic_id' => $clinic->id, 'phone' => $input['phone'], 'facebook' => $input['facebook'], 'twitter' => $input['twitter'], 'instagram' => $input['instagram'],  'whatsapp' => $input['whatsapp']]);
        $clinic->openGraph()->update(['og_title' => $input['name_en'], 'og_image' =>  $clinic->image_id, 'og_description' => $input['description_en'], 'og_url' => $input['url']]);
        $clinic->page()->update(['url' => $input['url'], 'name' => $input['name_en'], 'description' => $input['description_en']]);

        try
        {
            if ($request->hasFile('images'))
            {
                $imagesArray = array();

                foreach ($request->images as $image) {

                    $fileName =  time() . $image->getClientOriginalName();

                    $image->move(uploadedImagePath() . '/clinic', $fileName);

                    $filePath = uploadedImagePath() . '/clinic/' .$fileName;

                    $image = Image::create(['name' => $fileName, 'path' => $filePath]);

                    array_push($imagesArray, $image->id);

                }

                $clinic->images()->sync($imagesArray);
            }
        }

        catch (\Exception $e)
        {
            Session::flash('exception', 'Can\'t Add Images To Album');
            return redirect(adminUrl('clinic'));
        }



        Session::flash('create', 'Clinic Has Been Created Successfully');
        return redirect(adminUrl('clinic'));

    }




    public function destroy($id)
    {
        $clinic = Clinic::with('clinic_en')->find($id);

        $clinic->delete();
        $clinic->images()->detach();

        if ($clinic->images())
        {
            foreach ($clinic->images as $clinicImage)
            {
                unlink(public_path() . '/' . $clinicImage->path);
            }
        }

        if ($clinic->image_id)
        {
            unlink(public_path() . '/' . $clinic->image->path);
            //DB::table('image')->where('id', $clinic->image_id)->delete();
        }

        /*try
        {
            if ($clinic->image_id)
            {
                unlink(public_path() . '/' . $clinic->image->path);
                DB::table('image')->where('id', $clinic->image_id)->delete();
            }
        }

        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Clinic Because it is related to another item');
            return redirect()->back();
        }*/

        Session::flash('delete', 'Clinic ' . $clinic->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('clinic'));
    }
}
