<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    // Affiche une liste de catégories
    public function index()
    {
        $categories = Category::all(); // Récupère toutes les catégories
        return view('categories.index', compact('categories'));
    }

    // Affiche le formulaire de création d'une catégorie
    public function create()
    {
        return view('categories.create');
    }

    // Enregistre une nouvelle catégorie
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255', // Validation des données
        ]);

        Category::create($request->all()); // Crée une nouvelle catégorie
        return redirect()->route('categories.index')
            ->with('success', 'Catégorie créée avec succès.');
    }

    // Affiche les détails d'une catégorie spécifique
    public function show(Category $category)
    {
        return view('categories.show', compact('category'));
    }

    // Affiche le formulaire d'édition d'une catégorie
    public function edit(Category $category)
    {
        return view('categories.edit', compact('category'));
    }

    // Met à jour une catégorie spécifique
    public function update(Request $request, Category $category)
    {
        $request->validate([
            'name' => 'required|string|max:255', // Validation des données
        ]);

        $category->update($request->all()); // Met à jour la catégorie
        return redirect()->route('categories.index')
            ->with('success', 'Catégorie mise à jour avec succès.');
    }

    // Supprime une catégorie spécifique
    public function destroy(Category $category)
    {
        $category->delete(); // Supprime la catégorie
        return redirect()->route('categories.index')
            ->with('success', 'Catégorie supprimée avec succès.');
    }
}
