<!-- resources/views/categories/show.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Détails de la Catégorie</h1>
        <div class="card">
            <div class="card-header">
                Catégorie #{{ $category->id }}
            </div>
            <div class="card-body">
                <p><strong>Nom:</strong> {{ $category->name }}</p>
                <a href="{{ route('categories.edit', $category->id) }}" class="btn btn-warning">Modifier</a>
                <a href="{{ route('categories.index') }}" class="btn btn-secondary">Retour à la Liste</a>
            </div>
        </div>
    </div>
@endsection
