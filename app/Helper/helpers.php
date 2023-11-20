<?php

if(!function_exists('safe_json_encode')){

     function safe_json_encode($value, $options = 0, $depth = 512, $utfErrorFlag = false){
          $encoded = json_encode($value, $options, $depth);
          switch (json_last_error()) {
               case JSON_ERROR_NONE:
                    return $encoded;
               case JSON_ERROR_DEPTH:
                    return 'Maximum stack depth exceeded'; // or trigger_error() or throw new Exception()
               case JSON_ERROR_STATE_MISMATCH:
                    return 'Underflow or the modes mismatch'; // or trigger_error() or throw new Exception()
               case JSON_ERROR_CTRL_CHAR:
                    return 'Unexpected control character found';
               case JSON_ERROR_SYNTAX:
                    return 'Syntax error, malformed JSON'; // or trigger_error() or throw new Exception()
               case JSON_ERROR_UTF8:
                    $clean = utf8ize($value);
                    if ($utfErrorFlag) {
                         return 'UTF8 encoding error'; // or trigger_error() or throw new Exception()
                    }
                    return safe_json_encode($clean, $options, $depth, true);
               default:
                    return 'Unknown error'; // or trigger_error() or throw new Exception()

          }
     }

}

if(!function_exists('utf8ize')){

     function utf8ize($mixed){
          if (is_array($mixed)) {
               foreach ($mixed as $key => $value) {
                    $mixed[$key] = utf8ize($value);
               }
          } else if (is_string ($mixed)) {
               return utf8_encode($mixed);
          }
          return $mixed;
     }

}

if(!function_exists('appResponse')){

     function appResponse(){
          return app()->appResponse;
     }

}

if(!function_exists('appLog')){

     function appLog(){
          return app()->appLog;
     }

}

if(!function_exists('concatenateString')){

    function concatenateString(array $arr, $glue = '_'): string
    {
        return implode($glue, $arr);
    }

}

if(!function_exists('generate_random_string')){

    function generate_random_string($length = 64){
        return \Illuminate\Support\Str::random($length);
    }

}

if (! function_exists('file_delete')) {

    function file_delete($attachment): bool
    {
        return Illuminate\Support\Facades\File::delete($attachment);
    }

}


if (! function_exists('format_datetime')) {

    function format_datetime($datetime, string $format = 'd-m-Y h:i:s A'): string
    {
        $result = "";
        if ($datetime instanceof \Carbon\Carbon) {
            $result = $datetime->format($format);
        } else {
            $result = \Illuminate\Support\Carbon::parse($datetime)->format($format);
        }
        return $result;
    }

}

if (! function_exists('array_get')) {

    function array_get(array $array, int|string $key, mixed $default = ''): mixed
    {
        return \Illuminate\Support\Arr::get($array, $key, $default);
    }

}

if(!function_exists('setResource')) {
    function setResource($key, $resource)
    {
        app()->make($key, [$resource]);
        
        return $resource;
    }
}

if(!function_exists('getResource')) {
    function getResource($key)
    {   
        try {
            return app()->get($key);
        }catch (\Exception $e){
            
        }
        return null;
    }
}

if(!function_exists('getAuthUser')) {
    function getAuthUser()
    {
        $key = 'auth';
        $auth = getResource($key);
        
        if(empty($auth)){
            $auth = auth()->user();
            setResource($key,$auth);
        }

        return $auth;
    }
}
