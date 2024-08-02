<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    // Afficher la liste des produits
    public function index(Request $request)
    {
        $query = Product::query();

         // Filtrage par catégorie
        if ($request->has('category') && $request->category != '') {
            $query->where('category_id', $request->category);
        }

       // Filtrage par stock
        if ($request->has('stock_min') && $request->stock_min != '') {
            $query->where('stock', '>=', $request->stock_min);
        }
        if ($request->has('stock_max') && $request->stock_max != '') {
            $query->where('stock', '<=', $request->stock_max);
        }

        //Filtrage par nom
        if ($request->has('search') && $request->search != '') {
            $query->where('name', 'like', '%' . $request->search . '%');
        }
        
        //$products = $query->paginate(5); // Pagination


        $products = $query->get();
        $categories = Category::all();

        //$products = Product::all();
        return view('products.index', compact('products', 'categories'));
    }

    // Afficher le formulaire de création d'un nouveau produit
    public function create()
    {
        $categories = Category::all();
        return view('products.create', compact('categories'));
    }

    // Enregistrer un nouveau produit
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'stock' => 'required|integer',
            'category_id' => 'required|exists:categories,id',
        ]);

        Product::create($request->all());

        return redirect()->route('products.index')->with('success', 'Product created successfully.');
    }

    // Afficher un produit spécifique
    public function show($id)
    {
        $product = Product::find($id);
        return view('products.show', compact('product'));
    }

    // Afficher le formulaire de modification d'un produit
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        $categories = Category::all();
        return view('products.edit', compact('product', 'categories'));
    }

    // Mettre à jour un produit existant
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required|numeric',
            'stock' => 'required|integer',
        ]);

        $product = Product::findOrFail($id);
        $product->update($request->all());

        return redirect()->route('products.index')->with('success', 'Product updated successfully.');
    }

    // Supprimer un produit
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();

        return redirect()->route('products.index')->with('success', 'Product deleted successfully.');
    }
}