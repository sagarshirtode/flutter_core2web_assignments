import 'package:flutter/material.dart';

class Productdescription extends StatefulWidget {
  const Productdescription({super.key});

  @override
  State<Productdescription> createState() => _ProductdescriptionState();
}

class _ProductdescriptionState extends State<Productdescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoes"),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nike Air Force 1 07",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: const Text("SHOES"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: const Text("FOOTWEAR"),
                ),
              ],
            ),
            const Text(
              "Description",
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Text("Quantity"),
                const SizedBox(width: 50),
                Text("-"),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: const Text("1"),
                ),
                const SizedBox(width: 16),
                Text("+"),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add to cart functionality
              },
              child: const Text("PURCHASE"),
            ),
          ],
        ),
      ),
    );
  }
}
