<?php


namespace App\Utils;

use Exception;
use Illuminate\Support\Facades\Storage;

class Filemanager
{

    const MAIN_RESOURCE_DIR = 'resource';

    const USER_AVATAR_DIR = 'users';

    const DISK = 'public';


    public static function uploadFile($dir, $file_name, $content)
    {
        $result = "";

        try {
            
            $directory = self::MAIN_RESOURCE_DIR.DIRECTORY_SEPARATOR.$dir;
            
            if(!is_dir($directory)){
                mkdir($directory,0777,true);
            }

            $full_file_path = $directory.DIRECTORY_SEPARATOR.$file_name;

            Storage::disk(self::DISK)->put($full_file_path,file_get_contents($content));
            
            $result = $full_file_path;

        } catch (Exception $ex) {

        }

        return $result;
    }

    public static function getResource($dir,$file_name)
    {
        if(empty($file_name)){
            return "";
        }

        $file_path = 'storage';
        $file_path .= DIRECTORY_SEPARATOR.self::MAIN_RESOURCE_DIR;
        $file_path .= DIRECTORY_SEPARATOR.$dir;
        $file_path .= DIRECTORY_SEPARATOR.$file_name;
       // $file_path = public_path($file_path);
        
        if(!file_exists(public_path($file_path))){
            return "";
        }

        return asset($file_path);
    }
}
