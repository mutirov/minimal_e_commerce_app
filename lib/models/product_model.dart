class ProductModel {
  final int id;
  final String name;
  final String category;
  final String description;
  final double price;
  final String imageUrl;
  int stockQuantity;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.stockQuantity,
  });
}