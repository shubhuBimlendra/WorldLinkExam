<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Requests\ImageStoreRequest;
use App\Models\Image;

use Symfony\Component\HttpFoundation\Response;

class ImageController extends Controller
{
    public function index()
    {
        $images = Image::paginate(3);
        return response()->json($images,200);
    }


    public function imageStore(ImageStoreRequest $request)
    {

        $validatedData = $request->validated();
        $validatedData['image'] = $request->file('image')->store('image');
        $data = Image::create($validatedData);

        return response($data, Response::HTTP_CREATED);
    }
}
