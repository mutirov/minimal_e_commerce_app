import 'package:e_commerce_shop/models/product_model.dart';
import 'package:e_commerce_shop/pages/card_details.dart';
import 'package:e_commerce_shop/providers/card_provider.dart';
import 'package:e_commerce_shop/widgets/available_size.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CardProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.width * 0.75,
                child: Image.asset(product.imageUrl),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                // bottomLeft: Radius.circular(20),
                // bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Available Sizes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    AvailableSize(size: 'S'),
                    AvailableSize(size: 'M'),
                    AvailableSize(size: 'L'),
                    AvailableSize(size: 'XL'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Available colors:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 2, 2, 96),
                      radius: 16,
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Colors.black, radius: 16),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Colors.brown, radius: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${product.price}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                provider.toggleProduct(product);
                print('Added to cart: ${product.name}');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardDetails(),
                  ),
                );
              },
              icon: Icon(Icons.send),
              label: Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
