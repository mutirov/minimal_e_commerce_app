import 'package:e_commerce_shop/models/product_model.dart';

class MyProducts {
static List<ProductModel> products = [
  // Sneakers
  ProductModel(
    id: 1,
    name: "Air Max 90",
    category: "sneakers",
    description: "Classic Nike Air Max with timeless design. Breathable mesh panels keep your feet cool, while durable leather overlays add structure. Featuring iconic Air cushioning for all-day comfort and support.",
    price: 129.99,
    imageUrl: "assets/images/sneakers/airmax_90.jpg",
    stockQuantity: 12,
  ),
  ProductModel(
    id: 2,
    name: "Adidas Ultraboost",
    category: "sneakers",
    description: "High-performance running shoe with Boost cushioning. Knit upper adapts to your foot's shape for a perfect fit. Responsive midsole technology returns energy with every step you take.",
    price: 149.99,
    imageUrl: "assets/images/sneakers/adidas_ultraboost.jpeg",
    stockQuantity: 8,
  ),
  ProductModel(
    id: 3,
    name: "New Balance 574",
    category: "sneakers",
    description: "Retro-inspired sneaker with modern comfort. EVA foam midsole provides lightweight cushioning. Suede and mesh upper for a balanced blend of style and breathability.",
    price: 89.99,
    imageUrl: "assets/images/sneakers/new_balance_574.jpg",
    stockQuantity: 20,
  ),
  ProductModel(
    id: 4,
    name: "Puma RS-X",
    category: "sneakers",
    description: "Bold design with chunky sole and vibrant colors. RS cushioning delivers a plush feel underfoot. Perfect for streetwear style or casual everyday wear.",
    price: 99.99,
    imageUrl: "assets/images/sneakers/puma_rs_x.jpg",
    stockQuantity: 15,
  ),
  ProductModel(
    id: 5,
    name: "Converse Chuck 70",
    category: "sneakers",
    description: "Iconic canvas sneaker with vintage detailing. Reinforced stitching ensures durability. Cushioned footbed provides comfort for all-day wear.",
    price: 74.99,
    imageUrl: "assets/images/sneakers/converse_chuck_70.jpg",
    stockQuantity: 25,
  ),

  // Clothing
  ProductModel(
    id: 6,
    name: "Oversized Hoodie",
    category: "clothing",
    description: "Soft cotton hoodie with relaxed fit. Brushed interior for warmth and comfort. Adjustable drawstring hood and kangaroo pocket for added practicality.",
    price: 59.99,
    imageUrl: "assets/images/clothing/oversized_hoodie.jpeg",
    stockQuantity: 30,
  ),
  ProductModel(
    id: 7,
    name: "Graphic T-Shirt",
    category: "clothing",
    description: "100% cotton tee with bold front print. Pre-shrunk fabric keeps its shape after washing. Perfect for casual outfits or layering under jackets.",
    price: 24.99,
    imageUrl: "assets/images/clothing/graphic_tshirt.jpeg",
    stockQuantity: 40,
  ),
  ProductModel(
    id: 8,
    name: "Slim Fit Jeans",
    category: "clothing",
    description: "Stretch denim with tapered leg design. Mid-rise fit flatters any body shape. Durable stitching ensures long-lasting wear.",
    price: 49.99,
    imageUrl: "assets/images/clothing/slim_fit_jeans.jpeg",
    stockQuantity: 18,
  ),
  ProductModel(
    id: 9,
    name: "Bomber Jacket",
    category: "clothing",
    description: "Lightweight jacket with ribbed cuffs and collar. Water-resistant outer shell keeps you dry in light rain. Fully lined for added comfort.",
    price: 89.99,
    imageUrl: "assets/images/clothing/bomber_jacket.jpeg",
    stockQuantity: 10,
  ),
  ProductModel(
    id: 10,
    name: "Cargo Pants",
    category: "clothing",
    description: "Utility-style pants with multiple pockets. Adjustable ankle cuffs for a custom fit. Made with durable cotton blend for outdoor or casual wear.",
    price: 54.99,
    imageUrl: "assets/images/clothing/cargo_pants.jpeg",
    stockQuantity: 22,
  ),

  // Accessories
  ProductModel(
    id: 11,
    name: "Leather Wallet",
    category: "accessories",
    description: "Genuine leather wallet with RFID protection. Multiple card slots and a spacious bill compartment. Compact design fits easily in your pocket.",
    price: 39.99,
    imageUrl: "assets/images/accessories/leather_wallet.jpeg",
    stockQuantity: 35,
  ),
  ProductModel(
    id: 12,
    name: "Baseball Cap",
    category: "accessories",
    description: "Adjustable cap with embroidered logo. Breathable eyelets keep your head cool. Curved brim protects your eyes from the sun.",
    price: 19.99,
    imageUrl: "assets/images/accessories/baseball_cap.jpeg",
    stockQuantity: 50,
  ),
  ProductModel(
    id: 13,
    name: "Sunglasses",
    category: "accessories",
    description: "UV-protected lenses with sleek frame. Lightweight design for all-day comfort. Comes with a protective carrying case.",
    price: 29.99,
    imageUrl: "assets/images/accessories/sunglasses.jpeg",
    stockQuantity: 28,
  ),
  ProductModel(
    id: 14,
    name: "Canvas Tote Bag",
    category: "accessories",
    description: "Eco-friendly tote with minimalist design. Spacious interior holds books, groceries, or daily essentials. Durable stitching ensures long-lasting use.",
    price: 14.99,
    imageUrl: "assets/images/accessories/canvas_tote_bag.jpeg",
    stockQuantity: 60,
  ),
  ProductModel(
    id: 15,
    name: "Smartwatch Strap",
    category: "accessories",
    description: "Silicone strap compatible with major smartwatches. Sweat-resistant and easy to clean. Quick-release pins allow easy attachment and removal.",
    price: 12.99,
    imageUrl: "assets/images/accessories/smartwatch_strap.jpeg",
    stockQuantity: 45,
  ),
];


  static List<ProductModel> getSneakers() {
    return products.where((product) => product.category == "sneakers").toList();
  }

  static List<ProductModel> getJackets() {
    return products.where((product) => product.category == "clothing" && product.name.contains("Jacket")).toList();
  }

  static List<ProductModel> getAccessories() {
    return products.where((product) => product.category == "accessories").toList();
  }
  static List<ProductModel> getClothes() {
    return products.where((product) => product.category == "clothing").toList();
  }
}
