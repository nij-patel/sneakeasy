import 'package:flutter/material.dart';

import '../models/filters_model.dart';
import '../models/shoe_model.dart';
import '../models/wishlist_model.dart';

class HomePageViewModel extends ChangeNotifier {
  final List<Shoe> _allShoes = [];
  final List<Shoe> _filteredShoes = [];
  final Wishlist _wishlist;
  final Filters _filters;

  HomePageViewModel(this._wishlist, this._filters);

  Future<void> fetchRecommendedShoes() async {
    // pseudo data
    _allShoes.addAll([
      Shoe(
        name: 'Air Jordan 1 Mid Chicago',
        price: 250,
        id: 1,
        brand: 'Nike',
        material: 'Leather',
        primaryColor: 'Red',
        trending: true,
        imageUrl: 'https://i.ebayimg.com/images/g/rx4AAOSwyele~3e9/s-l1200.jpg',
        link: 'https://www.ebay.com/itm/274493978849',
      ),
      Shoe(
        name: 'Yeezy Boost 350 Triple White',
        price: 300,
        id: 2,
        brand: 'Adidas',
        material: 'Mesh',
        primaryColor: 'White',
        trending: false,
        imageUrl: 'https://cdn.flightclub.com/TEMPLATE/800801/1.jpg?w=3840',
        link:
            'https://www.flightclub.com/yeezy-boost-350-v2-cwhite-cwhite-cwhite-800801',
      ),
    ]);
    // Initialize filtered shoes with all shoes
    _filteredShoes.clear();
    _filteredShoes.addAll(_allShoes);
  }

  List<Shoe> getFilteredShoes() {
    // Logic to apply filters and return the filtered shoe list
    return _filteredShoes.where((shoe) {
      // Check if the shoe's primary color matches the selected colors, or if no color filters are applied
      final colorMatches = _filters.colors.isEmpty ||
          _filters.colors.contains(shoe.primaryColor);

      // Check if the shoe's brand matches the selected brands, or if no brand filters are applied
      final brandMatches =
          _filters.brands.isEmpty || _filters.brands.contains(shoe.brand);

      // Check if the shoe's price is within the selected price range
      // Assuming `Shoe` has a price field (add it if it's not there yet)
      final priceMatches =
          (shoe.price >= _filters.minPrice && shoe.price <= _filters.maxPrice);

      // Check if the shoe's style matches the selected style, or if no style filter is applied
      final styleMatches =
          _filters.style.isEmpty || shoe.material == _filters.style;

      // Combine all filter conditions
      return colorMatches && brandMatches && priceMatches && styleMatches;
    }).toList();
  }

  void navigateToDetails(BuildContext context, int shoeId) {
    // Use the Navigator to navigate to the ShoeDetailView (SDV must be implemented first)
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ShoeDetailView(shoeId: shoeId),
    //   ),
    // );
  }

  void addToWishlist(Shoe shoe) {
    _wishlist.addShoe(shoe);
    print('Shoe added to wishlist: ${shoe.name}');
  }
}
