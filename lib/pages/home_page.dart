import 'package:e_commerce_shop/models/my_products.dart';
import 'package:e_commerce_shop/pages/details_screen.dart';
import 'package:e_commerce_shop/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Our Products', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(index: 0, name: 'All Products'),
                const SizedBox(width: 13),
                _buildProductCategory(index: 1, name: 'Shoes'),
                const SizedBox(width: 13),
                _buildProductCategory(index: 2, name: 'Clothing'),
                const SizedBox(width: 13),
                _buildProductCategory(index: 3, name: 'Accessories'),
              ],
            ),
          ),
          const SizedBox(height: 20),
            Expanded(
              child:isSelected == 0 ?
               _buildAllProducts()
               : isSelected == 1 ?
               _buildShoesList()
               : isSelected == 2 ?
               _buildClothesList()
               : _buildAccessoriesList()
            ),
          ],
        ),
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = index;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected == index ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  _buildAllProducts() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.products.length,
      itemBuilder: (context, index) {
        final product = MyProducts.products[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: ProductCard(products: product),
        );
      },
    );
  }


  _buildJacketsList () {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.getJackets().length,
      itemBuilder: (context, index) {
        final product = MyProducts.getJackets()[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: ProductCard(products: product),
        );
      },
    );
  }

  _buildAccessoriesList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.getAccessories().length,
      itemBuilder: (context, index) {
        final product = MyProducts.getAccessories()[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: ProductCard(products: product),
        );
      },
    );
  }

  _buildClothesList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.getClothes().length,
      itemBuilder: (context, index) {
        final product = MyProducts.getClothes()[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: ProductCard(products: product),
        );
      },
    );
  }

  _buildShoesList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.getSneakers().length,
      itemBuilder: (context, index) {
        final product = MyProducts.getSneakers()[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: ProductCard(products: product),
        );
      },
    );
  }
}