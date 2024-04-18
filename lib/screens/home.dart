import 'package:flutter/material.dart';
import 'package:shoping_list/screens/newItem.dart';
import 'package:shoping_list/widgets/list_groceries.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void addNewItem(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Groceries",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              addNewItem(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const ListGroceries(),
    );
  }
}
