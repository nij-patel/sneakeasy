class Shoe {
  final String name;
  final int price;
  final int id;
  final String brand;
  final String material;
  final String primaryColor;
  final bool trending;
  final String link;
  final String imageUrl;
  final bool seen = false;

  Shoe(
      {required this.name,
      required this.price,
      required this.id,
      required this.brand,
      required this.material,
      required this.primaryColor,
      required this.trending,
      required this.imageUrl,
      required this.link});

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
        name: json["name"],
        price: json["price"],
        id: json["id"],
        brand: json["brand"],
        material: json["material"],
        primaryColor: json["primaryColor"],
        trending: json["trending"],
        imageUrl: json["imageUrl"],
        link: json["link"]);
  }
}
