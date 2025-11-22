// data/product_data.dart - Data dummy untuk kategori dan produk
import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductData {
  // List kategori
  static List<Category> categories = [
    Category(
      name: 'Makanan',
      icon: Icons.restaurant_menu,
      color: Colors.orange,
    ),
    Category(
      name: 'Minuman',
      icon: Icons.local_cafe,
      color: Colors.blue,
    ),
    Category(
      name: 'Elektronik',
      icon: Icons.devices_outlined,
      color: Colors.purple,
    ),
  ];

  // Map produk berdasarkan kategori
  static Map<String, List<Product>> products = {
    'Makanan': [
      Product(
        id: 1,
        name: 'Nasi Goreng Spesial',
        icon: Icons.rice_bowl,
        price: 18000,
        description: 'Nasi goreng dengan telur, ayam, dan sayuran segar',
      ),
      Product(
        id: 2,
        name: 'Mie Ayam Bakso',
        icon: Icons.ramen_dining,
        price: 15000,
        description: 'Mie ayam dengan bakso dan pangsit goreng',
      ),
      Product(
        id: 3,
        name: 'Sate Ayam',
        icon: Icons.kebab_dining,
        price: 25000,
        description: 'Sate ayam 10 tusuk dengan bumbu kacang',
      ),
      Product(
        id: 4,
        name: 'Burger Jumbo',
        icon: Icons.lunch_dining,
        price: 30000,
        description: 'Burger dengan daging sapi, keju, dan sayuran',
      ),
      Product(
        id: 5,
        name: 'Pizza Margherita',
        icon: Icons.local_pizza,
        price: 45000,
        description: 'Pizza dengan keju mozzarella dan saus tomat',
      ),
      Product(
        id: 6,
        name: 'Sushi Roll',
        icon: Icons.set_meal,
        price: 35000,
        description: 'Sushi roll isi salmon dan alpukat',
      ),
    ],
    'Minuman': [
      Product(
        id: 7,
        name: 'Es Teh Manis',
        icon: Icons.local_drink,
        price: 5000,
        description: 'Es teh manis segar dengan gula aren',
      ),
      Product(
        id: 8,
        name: 'Jus Jeruk Fresh',
        icon: Icons.emoji_food_beverage,
        price: 12000,
        description: 'Jus jeruk segar tanpa gula tambahan',
      ),
      Product(
        id: 9,
        name: 'Kopi Latte',
        icon: Icons.coffee,
        price: 18000,
        description: 'Kopi latte dengan susu segar',
      ),
      Product(
        id: 10,
        name: 'Smoothie Bowl',
        icon: Icons.icecream,
        price: 22000,
        description: 'Smoothie mangga dengan topping granola',
      ),
      Product(
        id: 11,
        name: 'Milkshake Coklat',
        icon: Icons.local_bar,
        price: 20000,
        description: 'Milkshake coklat dengan whipped cream',
      ),
      Product(
        id: 12,
        name: 'Teh Tarik',
        icon: Icons.coffee_maker,
        price: 8000,
        description: 'Teh tarik hangat khas Malaysia',
      ),
    ],
    'Elektronik': [
      Product(
        id: 13,
        name: 'Laptop Gaming',
        icon: Icons.laptop_chromebook,
        price: 8500000,
        description: 'Laptop gaming dengan prosesor Intel i7',
      ),
      Product(
        id: 14,
        name: 'Smartphone 5G',
        icon: Icons.smartphone,
        price: 4200000,
        description: 'Smartphone dengan kamera 108MP',
      ),
      Product(
        id: 15,
        name: 'Headphone Wireless',
        icon: Icons.headset,
        price: 750000,
        description: 'Headphone wireless dengan noise cancelling',
      ),
      Product(
        id: 16,
        name: 'Tablet Pro',
        icon: Icons.tablet_mac,
        price: 5500000,
        description: 'Tablet dengan stylus pen untuk desain',
      ),
      Product(
        id: 17,
        name: 'Smartwatch',
        icon: Icons.watch,
        price: 1200000,
        description: 'Smartwatch dengan monitor kesehatan',
      ),
      Product(
        id: 18,
        name: 'Speaker Bluetooth',
        icon: Icons.speaker,
        price: 450000,
        description: 'Speaker portable dengan bass powerful',
      ),
    ],
  };

  // Method untuk mendapatkan produk berdasarkan kategori
  static List<Product> getProductsByCategory(String categoryName) {
    return products[categoryName] ?? [];
  }
}