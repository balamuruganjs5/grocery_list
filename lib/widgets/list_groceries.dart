import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoping_list/providers/groceryProvider.dart';
import 'package:shoping_list/widgets/grocery_item_using_list_tile.dart';
// import 'package:shoping_list/widgets/grocery_item_using_row.dart';

class ListGroceries extends ConsumerWidget {
  const ListGroceries({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceries = ref.watch(groceriesProvider);

    return ListView.builder(
      itemCount: groceries.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(groceries[index]),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          ref
              .watch(groceriesProvider.notifier)
              .removeItem(groceries[index], context);
        },
        child: GroceryItemListTile(
          grocery: groceries[index],
        ),
      ),
    );
  }
}
