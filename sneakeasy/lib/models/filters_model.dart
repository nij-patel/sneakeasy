class Filters {
  double minPrice;
  double maxPrice;
  List<String> brands;
  List<String> colors;
  String style;

  Filters({
    this.minPrice = 0.0,
    this.maxPrice = double.infinity,
    List<String>? brands,
    List<String>? colors,
    this.style = '',
  })  : brands = brands ?? [],
        colors = colors ?? [];

  factory Filters.fromJson(Map<String, dynamic> json) {
    return Filters(
      minPrice: json["minPrice"] ?? 0.0,
      maxPrice: json["maxPrice"] ?? double.infinity,
      brands: List<String>.from(json["brands"] ?? []),
      colors: List<String>.from(json["colors"] ?? []),
      style: json["style"] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "minPrice": minPrice,
      "maxPrice": maxPrice,
      "brands": brands,
      "colors": colors,
      "style": style,
    };
  }

  void updateMinPrice(double newMinPrice) {
    minPrice = newMinPrice;
  }

  void updateMaxPrice(double newMaxPrice) {
    maxPrice = newMaxPrice;
  }

  void updateBrands(List<String> newBrands) {
    brands = newBrands;
  }

  void updateColors(List<String> newColors) {
    colors = newColors;
  }

  void updateStyle(String newStyle) {
    style = newStyle;
  }

  void resetFilters() {
    minPrice = 0.0;
    maxPrice = double.infinity;
    brands.clear();
    colors.clear();
    style = "";
  }
}
