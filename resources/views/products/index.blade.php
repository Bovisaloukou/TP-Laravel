<!-- resources/views/products/index.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Liste des Produits</h1>

        <form method="GET" action="{{ route('products.index') }}">
            <div class="form-row">
                <div class="col-md-3">
                    <select name="category" class="form-control">
                        <option value="">Toutes les catégories</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}" {{ request('category') == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-2">
                    <input type="number" name="stock_min" class="form-control" placeholder="Stock min" value="{{ request('stock_min') }}">
                </div>
                <div class="col-md-2">
                    <input type="number" name="stock_max" class="form-control" placeholder="Stock max" value="{{ request('stock_max') }}">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary">Filtrer</button>
                </div>
            </div>
        </form>

        <div class="row mt-4">
            @foreach ($products as $product)
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->name }}</h5>
                            <p class="card-text">{{ $product->description }}</p>
                            <p class="card-text">Prix: {{ $product->price }} €</p>
                            <p class="card-text">Stock: {{ $product->stock }}</p>
                            <p class="card-text">Catégorie: {{ $product->category->name }}</p>
                            <a href="{{ route('products.show', $product->id) }}" class="btn btn-primary">Voir</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
