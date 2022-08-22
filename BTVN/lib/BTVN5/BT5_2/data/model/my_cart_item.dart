class MyCartItem {
  final String productName;
  final double price;
  final int count;

  // ham getter
  double get subTotal => price * count;

  MyCartItem({
    required this.productName,
    required this.price,
    required this.count,
  });
}
