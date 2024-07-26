import 'package:shopping_list/models/category.dart';

class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.image,
    required this.category,
  });

  final String id;
  final String name;
  final int quantity;
  final String? image;
  final Category category;
}
