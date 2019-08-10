<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Clinic_type extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'clinic_type';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['url', 'open_graph_id', 'page_id', 'created_by'];

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


    public function clinic_type_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Clinic_type::class, 'clinic_type_id', 'id');
    }

    public function clinic_type_en()
    {
        return $this->hasOne(\App\Models\English\Clinic_type::class, 'clinic_type_id', 'id');
    }

}
