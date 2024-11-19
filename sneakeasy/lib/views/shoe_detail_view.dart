import 'package:flutter/material.dart';
import '../models/shoe_model.dart';

class ShoeDetailView extends StatelessWidget {
  final Shoe shoe;

  const ShoeDetailView({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shoe.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shoe image
            Center(
              child: Image.network(
                shoe.imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            // Shoe name
            Text(
              shoe.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            // Shoe brand
            Text(
              shoe.brand,
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            SizedBox(height: 8.0),
            // Shoe price
            Text(
              "\$${shoe.price.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),
            SizedBox(height: 16.0),
            // Shoe details
            Text(
              'Material: ${shoe.material}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'Primary Color: ${shoe.primaryColor}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            // Trending indicator
            if (shoe.trending)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Chip(
                  label: Text('Trending'),
                  backgroundColor: Colors.orange,
                ),
              ),
            Spacer(),
            // Buy button
            ElevatedButton(
              onPressed: () {
                // Add logic to redirect to purchase link
                print('Redirecting to buy: ${shoe.link}');
                // You can use launchUrl or similar method for actual implementation
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
