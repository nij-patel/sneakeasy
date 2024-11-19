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
      Shoe(
        name: 'Nike Air Max 90 Infrared',
        price: 150,
        id: 3,
        brand: 'Nike',
        material: 'Leather & Mesh',
        primaryColor: 'White',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/138038/1.jpg',
        link: 'https://www.flightclub.com/nike-air-max-90-infrared-138038',
      ),
      Shoe(
        name: 'Adidas Ultraboost 21 Solar Red',
        price: 180,
        id: 4,
        brand: 'Adidas',
        material: 'Primeknit',
        primaryColor: 'Red',
        trending: false,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/231194/1.jpg',
        link:
            'https://www.flightclub.com/adidas-ultraboost-21-solar-red-231194',
      ),
      Shoe(
        name: 'Converse Chuck Taylor All-Star',
        price: 60,
        id: 5,
        brand: 'Converse',
        material: 'Canvas',
        primaryColor: 'Black',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/199008/1.jpg',
        link:
            'https://www.flightclub.com/converse-chuck-taylor-all-star-199008',
      ),
      Shoe(
        name: 'Puma RS-X Bold',
        price: 110,
        id: 6,
        brand: 'Puma',
        material: 'Mesh & Leather',
        primaryColor: 'Blue',
        trending: false,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/175329/1.jpg',
        link: 'https://www.flightclub.com/puma-rs-x-bold-175329',
      ),
      Shoe(
        name: 'Vans Old Skool Black/White',
        price: 65,
        id: 7,
        brand: 'Vans',
        material: 'Suede & Canvas',
        primaryColor: 'Black',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/213960/1.jpg',
        link: 'https://www.flightclub.com/vans-old-skool-black-white-213960',
      ),
      Shoe(
        name: 'New Balance 550 White/Green',
        price: 130,
        id: 8,
        brand: 'New Balance',
        material: 'Leather & Suede',
        primaryColor: 'Green',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/211405/1.jpg',
        link: 'https://www.flightclub.com/new-balance-550-white-green-211405',
      ),
      Shoe(
        name: 'Jordan 4 Retro Bred',
        price: 220,
        id: 9,
        brand: 'Jordan',
        material: 'Leather & Suede',
        primaryColor: 'Black',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/138206/1.jpg',
        link: 'https://www.flightclub.com/jordan-4-retro-bred-138206',
      ),
      Shoe(
        name: 'Asics Gel-Kayano 14 White/Silver',
        price: 150,
        id: 10,
        brand: 'Asics',
        material: 'Mesh',
        primaryColor: 'Silver',
        trending: false,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/233703/1.jpg',
        link:
            'https://www.flightclub.com/asics-gel-kayano-14-white-silver-233703',
      ),
      Shoe(
        name: 'Reebok Club C 85 Vintage',
        price: 75,
        id: 11,
        brand: 'Reebok',
        material: 'Leather',
        primaryColor: 'White',
        trending: true,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/208675/1.jpg',
        link: 'https://www.flightclub.com/reebok-club-c-85-vintage-208675',
      ),
      Shoe(
        name: 'Saucony Shadow 6000 White/Blue',
        price: 120,
        id: 12,
        brand: 'Saucony',
        material: 'Mesh & Suede',
        primaryColor: 'Blue',
        trending: false,
        imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/221749/1.jpg',
        link:
            'https://www.flightclub.com/saucony-shadow-6000-white-blue-221749',
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
