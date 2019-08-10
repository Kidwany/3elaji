<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Clinic extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'clinic';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['specialist_id', 'clinic_type_id', 'video_url', 'image_id', 'open_graph_id', 'page_id', 'url', 'created_by'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [];


    public function clinic_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Clinic::class, 'clinic_id', 'id');
    }

    public function clinic_en()
    {
        return $this->hasOne(\App\Models\English\Clinic::class, 'clinic_id', 'id');
    }

    public function contact()
    {
        return $this->hasOne(Clinic_contact::class, 'clinic_id', 'id');
    }

    public function clinic_type()
    {
        return $this->belongsTo(Clinic_type::class, 'clinic_type_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id');
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }

    public function page()
    {
        return $this->belongsTo(Page::class, 'page_id', 'id');
    }

    public function openGraph()
    {
        return $this->belongsTo(Open_graph::class, 'open_graph_id', 'id');
    }

    public function specialist()
    {
        return $this->belongsTo(Specialist::class, 'specialist_id', 'id');
    }

    public function images()
    {
        return $this->belongsToMany(Image::class, 'clinic_images', 'clinic_id', 'image_id');
    }

    public function form()
    {
        return $this->belongsTo(Form::class, 'form_id', 'id');
    }


}
