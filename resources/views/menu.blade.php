@extends('layouts.app')

@section('title', ' - Menu')

@section('content')

<h1 class="menu-header">Menu</h1>

<p>
    Ne luăm în serios gradina de prospaturi, oferindu-vă o fermă pentru a servi masa.
    Ingredientele noastre se găsesc local, folosind doar cei mai buni furnizori organici disponibili.
    Consultați popularul nostru bufet de salate de prânz!


</p>

<div class="menu">
    @foreach($categories as $category)
        <div class="category">
            <a name="{{str_slug($category->name)}}"></a>
            <h2 class="category-name">{{$category->name}}</h2>
            <hr>
            @foreach($category->menuItems as $item)
            <div class="menu-item">
                <img src="/storage/images/{{$item->image}}">
                
                <div>

                    <strong>{{$item->name}}</strong>
                    <p>{{$item->description}}</p>
                </div>

                <div class="price">

                    {{round($item->price, 2)}} Ron
                    <button>Adauga in cos</button>
                </div>
            </div>
            @endforeach
        </div>
    @endforeach 


</div>
            
@endsection