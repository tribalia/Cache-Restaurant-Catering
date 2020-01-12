@extends('layouts.app')

@section('title', ' - Crearea amintirilor, o experiență unica')

@section('content')
<h4 class="intro">Crearea amintirilor, o experiență unica</h4>               
<p>
    <strong>Restaurantul Cache</strong> nu se rezumă doar la mese. Este vorba despre crearea de experiențe memorabile pe care invitatul nostru le va prețui!
    Restaurantul nostru prietenos cu familia are opțiuni de a lua masa la interior, exterior și rezervat pentru orice ocazie.
    Zona noastră de grădină în aer liber este perfectă pentru o plimbare înainte sau după masă. Vă invităm să veniți să luați masa cu noi!


</p>
<img src="/images/patio.jpg" class="home">
<div class="menu-categories">
    @foreach ($categories as $cat)
        <article>
            <a href="/menu#{{str_slug($cat->name)}}"><img src="/images/{{$cat->image}}"></a>
            <h2><a href="/menu#{{str_slug($cat->name)}}">{{$cat->name}}</a></h2>
        </article>   
    @endforeach                                
</div>
<div class="social">
    <div>
        <h4>Ce spun clientii nostri</h4>
        <p>
            Acest loc are, face fără îndoială, una dintre cele mai bune pizza pe care le-am gustat vreodată!
            Proprietarii sunt calzi și s-au asigurat că am avut tot ce avem nevoie.
            Este o mâncare diversificata, cu o mare varietate de mese din care să alegeți,
            dar tot ce am încercat din meniul lor a fost minunat.
            Este cu siguranță un loc caruia trebuia sa ii dati cateva sanse inainte de a va face o idee despre tot ceea ce are de oferit.
            Oh, și brulee lor de cremă este uimitoare!<br>
            <br>
            Shad Cayden
        </p>
    </div>    
    <div class="networks">
        <a href="#"><img src="/images/twitter.png"></a>
        <a href="#"><img src="/images/fb.png"></a>
        <a href="#"><img src="/images/ig.png"></a>    
    </div>
</div>
@endsection
