<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // Récupérer les catégories pour afficher sur la page principale
        $categories = Category::all();

        // Récupérer les produits récents ou populaires
        $products = Product::latest()->take(5)->get(); // Exemple pour obtenir les 5 derniers produits

        // Retourner la vue avec les données
        return view('home', compact('categories', 'products'));
    }
}
