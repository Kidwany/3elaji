<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Specialist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class SpecialistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $specialists = Specialist::with('specialist_en', 'createdBy')->get();
        return view('dashboard.specialist.index',  compact('specialists'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.specialist.create');
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
            'url'               => 'bail|max:200',
            'name_en'           => 'bail|required|max:200',
            'name_ar'           => 'bail|required|max:200',
        ], [], [
            'url'               => ' URL',
            'name_en'           => ' Name in English',
            'name_ar'           => ' Name in Arabic',
        ]);


        $specialist = new Specialist();
        $specialist->url = $input['url'];
        $specialist->created_by = $input['created_by'];
        $specialist->save();

        $specialist->specialist_ar()->create(['specialist_id' => $specialist->id, 'name' => $input['name_ar']]);
        $specialist->specialist_en()->create(['specialist_id' => $specialist->id, 'name' => $input['name_en']]);

        Session::flash('create', 'Specialist Has Been Created Successfully');
        return redirect(adminUrl('specialist'));
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
        $specialist = Specialist::with('specialist_en', 'specialist_ar')->find($id);
        return view('dashboard.specialist.edit', compact('specialist'));
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
        $specialist = Specialist::with('specialist_en', 'specialist_ar')->find($id);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|max:200',
            'name_en'           => 'bail|required|max:200',
            'name_ar'           => 'bail|required|max:200',
        ], [], [
            'url'               => ' URL',
            'name_en'           => ' Name in English',
            'name_ar'           => ' Name in Arabic',
        ]);


        $specialist->url = $input['url'];
        $specialist->created_by = $input['created_by'];
        $specialist->save();

        $specialist->specialist_ar()->update(['specialist_id' => $id, 'name' => $input['name_ar']]);
        $specialist->specialist_en()->update(['specialist_id' => $id, 'name' => $input['name_en']]);

        Session::flash('create', 'Specialist Has Been Updated Successfully');
        return redirect(adminUrl('specialist'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $specialist = Specialist::find($id);
        $specialist->delete();

        Session::flash('delete', 'Speciality ' . $specialist->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('specialist'));
    }
}
