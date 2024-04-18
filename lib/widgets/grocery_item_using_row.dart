import 'package:flutter/material.dart';
import 'package:shoping_list/modals/grocery.dart';

class GroceryItemCard extends StatelessWidget {
  const GroceryItemCard({super.key, required this.grocery});

  final GroceryItem grocery;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: [
              Card(
                color: grocery.category.color,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(1),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(grocery.name),
            ],
          ),
          const Spacer(),
          Text(grocery.quantity.toString()),
        ],
      ),
    );
  }
}
