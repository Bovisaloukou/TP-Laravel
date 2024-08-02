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
            ['name' => 'Livres'],
            ['name' => 'Musique'],
            ['name' => 'Jardinage'],
            ['name' => 'Beauté'],
            ['name' => 'Santé'],
            ['name' => 'Automobile'],
            ['name' => 'Bricolage'],
            ['name' => 'Cuisine'],
            ['name' => 'Bijoux'],
            ['name' => 'Montres'],
            ['name' => 'Chaussures'],
            ['name' => 'Accessoires'],
            ['name' => 'Jeux Vidéo'],
            ['name' => 'Ordinateurs'],
            ['name' => 'Télévisions'],
        ];

        foreach ($categories as $category) {
            Category::create($category);
        }
    }
}
