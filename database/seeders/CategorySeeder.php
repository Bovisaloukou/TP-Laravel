<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    public function run()
    {
        // Exemple de catégories à insérer
        $categories = [
            ['name' => 'Électronique'],
            ['name' => 'Vêtements'],
            ['name' => 'Maison'],
            ['name' => 'Jouets'],
            ['name' => 'Sports'],
        ];

        foreach ($categories as $category) {
            Category::create($category);
        }
    }
}
