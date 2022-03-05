import 'package:flutter/material.dart';
import 'package:lab3/components/item_tile.dart';
import 'package:lab3/data.dart';
import 'package:lab3/screens/shop.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My Store'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: storeItems.length,
          itemBuilder: (context, index) {
            return ItemTile(
              storeItems.elementAt(index),
            );
          },
        ),
      ),
    );
  }
}
