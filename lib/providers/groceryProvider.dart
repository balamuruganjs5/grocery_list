// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoping_list/data/groceryItems.dart';
import 'package:shoping_list/modals/grocery.dart';

class GroceriesNotifier extends StateNotifier<List<GroceryItem>> {
  GroceriesNotifier() : super(groceryItems);

  void addItem(GroceryItem grocery) {
    state = [...state, grocery];
  }

  void removeItem(GroceryItem grocery, BuildContext context) {
    // final itemIndex = state.indexOf(grocery);
    final backuplist = state;
    state = state.where((g) => g.id != grocery.id).toList();

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Grocery item removed!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            state = backuplist;
          },
        ),
      ),
    );
  }
}

final groceriesProvider =
    StateNotifierProvider<GroceriesNotifier, List<GroceryItem>>(
  (ref) => GroceriesNotifier(),
);
