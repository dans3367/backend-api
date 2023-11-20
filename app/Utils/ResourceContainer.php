<?php

namespace App\Utils;

use Exception;

class ResourceContainer
{

    private $resource = null;

    public function __construct($resource)
    {
        $this->resource = $resource;
    }

    public function getResource(){
        try{
            return $this->resource;
        }catch(Exception $ex){

        }

        return null;
    }

}
