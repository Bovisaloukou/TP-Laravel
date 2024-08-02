<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    public function run()
    {


        $products = [
            ['name' => 'Casque audio', 'description' => 'Casque audio avec réduction de bruit', 'price' => 89.99, 'stock' => 60, 'category_id' => 1],
            ['name' => 'T-shirt', 'description' => 'T-shirt en coton', 'price' => 19.99, 'stock' => 100, 'category_id' => 2],
            ['name' => 'Jean', 'description' => 'Jean en denim', 'price' => 39.99, 'stock' => 50, 'category_id' => 2],
            ['name' => 'Canapé', 'description' => 'Canapé en cuir', 'price' => 499.99, 'stock' => 15, 'category_id' => 3],
            ['name' => 'Lampe de table', 'description' => 'Lampe de table moderne', 'price' => 59.99, 'stock' => 30, 'category_id' => 3],
            ['name' => 'Puzzle en bois', 'description' => 'Puzzle en bois pour enfants', 'price' => 24.99, 'stock' => 80, 'category_id' => 4],
            ['name' => 'Train miniature', 'description' => 'Train miniature avec rails', 'price' => 89.99, 'stock' => 50, 'category_id' => 4],
            ['name' => 'Veste de pluie', 'description' => 'Veste de pluie imperméable', 'price' => 59.99, 'stock' => 45, 'category_id' => 5],
            ['name' => 'Chaussures de sport', 'description' => 'Chaussures de sport en mesh', 'price' => 79.99, 'stock' => 55, 'category_id' => 5],
            ['name' => 'Livre de cuisine', 'description' => 'Livre de recettes de cuisine', 'price' => 29.99, 'stock' => 60, 'category_id' => 6],
            ['name' => 'Roman à suspense', 'description' => 'Roman captivant', 'price' => 19.99, 'stock' => 100, 'category_id' => 6],
            ['name' => 'CD de musique classique', 'description' => 'CD de musique classique', 'price' => 14.99, 'stock' => 70, 'category_id' => 7],
            ['name' => 'Vinyle de jazz', 'description' => 'Vinyle de jazz', 'price' => 24.99, 'stock' => 40, 'category_id' => 7],
            ['name' => 'Gant de jardinage', 'description' => 'Gant de jardinage en cuir', 'price' => 14.99, 'stock' => 100, 'category_id' => 8],
            ['name' => 'Arrosoir', 'description' => 'Arrosoir en métal', 'price' => 25.99, 'stock' => 50, 'category_id' => 8],
            ['name' => 'Crème hydratante', 'description' => 'Crème hydratante pour peau sèche', 'price' => 19.99, 'stock' => 80, 'category_id' => 9],
            ['name' => 'Maquillage', 'description' => 'Kit de maquillage complet', 'price' => 49.99, 'stock' => 30, 'category_id' => 9],
            ['name' => 'Compléments alimentaires', 'description' => 'Compléments alimentaires pour énergie', 'price' => 29.99, 'stock' => 70, 'category_id' => 10],
            ['name' => 'Appareil de massage', 'description' => 'Appareil de massage électrique', 'price' => 89.99, 'stock' => 40, 'category_id' => 10],
            ['name' => 'Voiture télécommandée', 'description' => 'Voiture télécommandée tout-terrain', 'price' => 129.99, 'stock' => 20, 'category_id' => 11],
            ['name' => 'Kit de réparation', 'description' => 'Kit de réparation pour automobile', 'price' => 69.99, 'stock' => 30, 'category_id' => 11],
            ['name' => 'Perceuse', 'description' => 'Perceuse électrique sans fil', 'price' => 119.99, 'stock' => 15, 'category_id' => 12],
            ['name' => 'Set de tournevis', 'description' => 'Set de tournevis professionnels', 'price' => 39.99, 'stock' => 40, 'category_id' => 12],
            ['name' => 'Mixeur', 'description' => 'Mixeur à grande capacité', 'price' => 89.99, 'stock' => 25, 'category_id' => 13],
            ['name' => 'Friteuse', 'description' => 'Friteuse sans huile', 'price' => 99.99, 'stock' => 20, 'category_id' => 13],
            ['name' => 'Collier en or', 'description' => 'Collier en or 18K', 'price' => 299.99, 'stock' => 15, 'category_id' => 14],
            ['name' => 'Bracelet', 'description' => 'Bracelet en argent', 'price' => 79.99, 'stock' => 30, 'category_id' => 14],
            ['name' => 'Montre connectée', 'description' => 'Montre connectée avec GPS', 'price' => 199.99, 'stock' => 25, 'category_id' => 15],
            ['name' => 'Montre de luxe', 'description' => 'Montre de luxe avec bracelet en cuir', 'price' => 499.99, 'stock' => 15, 'category_id' => 15],
            ['name' => 'Chaussures de danse', 'description' => 'Chaussures de danse en cuir', 'price' => 89.99, 'stock' => 30, 'category_id' => 16],
            ['name' => 'Sac à main', 'description' => 'Sac à main en cuir', 'price' => 149.99, 'stock' => 40, 'category_id' => 16],
            ['name' => 'Casque VR', 'description' => 'Casque de réalité virtuelle', 'price' => 399.99, 'stock' => 10, 'category_id' => 17],
            ['name' => 'Manette de jeu', 'description' => 'Manette de jeu sans fil', 'price' => 59.99, 'stock' => 25, 'category_id' => 17],
            ['name' => 'Écran d’ordinateur', 'description' => 'Écran d’ordinateur 27 pouces', 'price' => 299.99, 'stock' => 15, 'category_id' => 18],
            ['name' => 'Clavier mécanique', 'description' => 'Clavier mécanique avec rétroéclairage', 'price' => 129.99, 'stock' => 20, 'category_id' => 18],
            ['name' => 'Home cinéma', 'description' => 'Système home cinéma 5.1', 'price' => 699.99, 'stock' => 10, 'category_id' => 19],
            ['name' => 'Clé USB 64 Go', 'description' => 'Clé USB de 64 Go', 'price' => 19.99, 'stock' => 120, 'category_id' => 20],
            ['name' => 'Sac à dos', 'description' => 'Sac à dos pour ordinateur portable', 'price' => 49.99, 'stock' => 45, 'category_id' => 20],
        ];


        foreach ($products as $product) {
            Product::create($product);
        }
    }
}
