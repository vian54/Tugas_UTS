// models/product_model.dart - Model data untuk Category dan Product
import 'package:flutter/material.dart';

// Model untuk Category
class Category {
  final String name;
  final IconData icon;
  final Color color;

  Category({
    required this.name,
    required this.icon,
    required this.color,
  });
}

// Model untuk Product
class Product {
  final int id;
  final String name;
  final IconData icon;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.icon,
    required this.price,
    required this.description,
  });

  // Format harga ke Rupiah
  String get formattedPrice {
    return 'Rp ${price.toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    )}';
  }
}