class Product {
  final String image;
  final String name;
  final String size;
  final int quantity;
  final double price;

  Product({
      required this.image,
      required this.name,
      required this.size,
      required this.quantity,
      required this.price
  });
  Map<String,dynamic> toJson(){
    return {
      'image': image,
      'name': name,
      'size':size,
      'quantity':quantity,
      'price':price
    };
  }
}
