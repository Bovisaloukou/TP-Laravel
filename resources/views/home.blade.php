<!-- resources/views/home.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Bienvenue sur notre Boutique</h1>
        <p>Découvrez nos produits et catégories :</p>
        
        <div class="row">
            <!-- Bouton pour accéder à la liste des produits -->
            <div class="col-md-6 mb-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Voir les Produits</h5>
                        <p class="card-text">Découvrez tous nos produits disponibles.</p>
                        <a href="{{ route('products.index') }}" class="btn btn-primary">Voir les Produits</a>
                    </div>
                </div>
            </div>

            <!-- Bouton pour accéder à la liste des catégories -->
            <div class="col-md-6 mb-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Voir les Catégories</h5>
                        <p class="card-text">Explorez nos différentes catégories de produits.</p>
                        <a href="{{ route('categories.index') }}" class="btn btn-primary">Voir les Catégories</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
