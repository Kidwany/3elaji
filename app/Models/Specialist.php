<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Specialist extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'specialist';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['image_id', 'url', 'created_by'];

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


    public function specialist_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Specialist::class, 'specialist_id', 'id');
    }

    public function specialist_en()
    {
        return $this->hasOne(\App\Models\English\Specialist::class, 'specialist_id', 'id');
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }

}
