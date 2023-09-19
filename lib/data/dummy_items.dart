import 'package:shop/models/grocery_item.dart';
import 'package:shop/data/categories.dart';
import 'package:shop/models/category.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy]!),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit]!),
  GroceryItem(
      id: 'c',
      name: 'Bread',
      quantity: 1,
      category: categories[Categories.breads]!),
];