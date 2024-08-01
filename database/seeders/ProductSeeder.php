<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    public function run()
    {
        // Exemple de produits à insérer
        $products = [
            ['name' => 'Téléphone', 'description' => 'Téléphone mobile', 'price' => 199.99, 'stock' => 100, 'category_id' => 1],
            ['name' => 'T-shirt', 'description' => 'T-shirt en coton', 'price' => 29.99, 'stock' => 200, 'category_id' => 2],
            ['name' => 'Chaise', 'description' => 'Chaise en bois', 'price' => 89.99, 'stock' => 50, 'category_id' => 3],
            ['name' => 'Poupée', 'description' => 'Poupée en peluche', 'price' => 14.99, 'stock' => 150, 'category_id' => 4],
            ['name' => 'Raquette de tennis', 'description' => 'Raquette de tennis en graphite', 'price' => 129.99, 'stock' => 30, 'category_id' => 5],
        ];

        foreach ($products as $product) {
            Product::create($product);
        }
    }
}
