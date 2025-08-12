import 'package:e_commerce_shop/models/product_model.dart';
import 'package:e_commerce_shop/providers/favorite_provider.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final ProductModel products;
  const ProductCard({super.key, required this.products});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.products.imageUrl,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.65,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/placeholder.png',
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width * 0.65,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              Positioned(
                right: 1,
                child: IconButton(
                  icon: Icon(
                    provider.isExist(widget.products)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                    size: 24,
                  ),
                  onPressed: () {
                    provider.toogleFavorite(widget.products);
                    print('Added to favorites ${widget.products.name}');
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.products.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.products.category,
                style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 124, 123, 123)),
              ),
              Column(
                children: [
                  Text(
                    "${widget.products.price} USD",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
