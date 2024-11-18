import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:provider/provider.dart';

import '../models/shoe_model.dart';
import '../view_models/home_page_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageViewModel homePageViewModel;

  @override
  void initState() {
    super.initState();
    // Initialize the view model and fetch data
    homePageViewModel = Provider.of<HomePageViewModel>(context, listen: false);
    homePageViewModel.fetchRecommendedShoes();
  }

  @override
  Widget build(BuildContext context) {
    final filteredShoes = homePageViewModel.getFilteredShoes();

    return Scaffold(
      appBar: AppBar(
        title: Text('Sneaker Swiper'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              // Navigate to Filters page (must be implemented)
              Navigator.pushNamed(context, '/filters');
            },
          ),
        ],
      ),
      body: filteredShoes.isEmpty
          ? Center(
              child: Text(
                'No shoes available to swipe!',
                style: TextStyle(fontSize: 16),
              ),
            )
          : SwipingInterface(
              filteredShoes: filteredShoes,
              homePageViewModel: homePageViewModel,
            ),
    );
  }
}

class SwipingInterface extends StatelessWidget {
  final List<Shoe> filteredShoes;
  final HomePageViewModel homePageViewModel;

  SwipingInterface(
      {required this.filteredShoes, required this.homePageViewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: filteredShoes.map((shoe) {
        return Swipable(
          onSwipeRight: (_) {
            shoe.markSeen(); // Mark as seen
            homePageViewModel.addToWishlist(shoe); // Add to wishlist
          },
          onSwipeLeft: (_) {
            shoe.markSeen(); // Mark as seen
            // Dislike logic can be added if needed
          },
          child: ShoeCard(shoe: shoe),
        );
      }).toList(),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final Shoe shoe;

  ShoeCard({required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              shoe.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  shoe.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(shoe.brand),
                Text("\$${shoe.price.toStringAsFixed(2)}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
