import 'package:flutter/material.dart';
import 'package:belanja/models/Item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text("Detail Item")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Harga: Rp ${item.price}",
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
