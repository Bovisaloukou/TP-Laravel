<!-- resources/views/products/show.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Détails du Produit</h1>
        <div class="card">
            <div class="card-header">
                {{ $product->name }}
            </div>
            <div class="card-body">
                <h5 class="card-title">Description</h5>
                <p class="card-text">{{ $product->description }}</p>
                <h5 class="card-title">Prix</h5>
                <p class="card-text">{{ $product->price }} €</p>
                <h5 class="card-title">Stock</h5>
                <p class="card-text">{{ $product->stock }}</p>
                <h5 class="card-title">Catégorie</h5>
                <p class="card-text">{{ $product->category->name }}</p>
                <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning">Modifier</a>
                <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline-block;">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Supprimer</button>
                </form>
            </div>
        </div>
    </div>
@endsection
