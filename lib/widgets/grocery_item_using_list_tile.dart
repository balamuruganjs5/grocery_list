import 'package:flutter/material.dart';
import 'package:shoping_list/modals/grocery.dart';

class GroceryItemListTile extends StatelessWidget {
  const GroceryItemListTile({super.key, required this.grocery});

  final GroceryItem grocery;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(grocery.name),
      leading: Container(
        height: 24,
        width: 24,
        color: grocery.category.color,
      ),
      trailing: Text(
        grocery.quantity.toString(),
      ),
    );
  }
}
