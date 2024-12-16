import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:provider/provider.dart';
import 'package:sneakeasy/view_models/wishlist_view_model.dart';
import 'package:sneakeasy/views/shoe_detail_view.dart';
import 'package:sneakeasy/views/wishlist_page.dart';

import '../models/shoe_model.dart';
import '../view_models/home_page_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageViewModel homePageViewModel;
  List<Shoe> filteredShoes = []; // Add this line
  late Key swiperKey;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize the view model and fetch data
    homePageViewModel = Provider.of<HomePageViewModel>(context);
    homePageViewModel.fetchRecommendedShoes();
    filteredShoes = homePageViewModel.getFilteredShoes(); // Initialize here
    swiperKey = UniqueKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SneakEasy'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () async {
              // Navigate to Filters page (must be implemented)
              await Navigator.pushNamed(context, '/filters');
              setState(() {
                print("Updating filtered shoes");
                filteredShoes = homePageViewModel.getFilteredShoes();
                swiperKey = UniqueKey();

                print("Filtered shoes length is: ${filteredShoes.length}");
                for (var shoe in filteredShoes) {
                  print("shoe is ${shoe.name}");
                }
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishlistPage()),
              );
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
          : CardSwiper(
              key: swiperKey,
              cardsCount: filteredShoes.length,
              numberOfCardsDisplayed: 1,
              cardBuilder: (context, index, horizontalOffsetPercentage,
                  verticalOffsetPercentage) {
                return ShoeCard(
                  shoe: filteredShoes[index],
                );
              },
              allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                  horizontal: true, vertical: false),
              onEnd: () {
                // Handle what happens when all cards are swiped
                setState(() {
                  filteredShoes.clear();
                  swiperKey = UniqueKey();
                });
                print("All shoes swiped!");
              },
              onSwipe: (previndex, index, direction) {
                if (direction == CardSwiperDirection.right) {
                  Provider.of<WishlistViewModel>(context, listen: false)
                      .addShoe(filteredShoes[previndex]);
                  print(
                      "Shoe added to wishlist: ${filteredShoes[previndex].name}");
                }
                // Mark the shoe as seen
                filteredShoes[previndex].seen = true;
                return true;
              },
              scale: 0.9, // Adjusts the scale of the card stack
              padding:
                  const EdgeInsets.all(16.0), // Adds padding around the card
              isLoop: false,
            ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final Shoe shoe;

  ShoeCard({required this.shoe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShoeDetailView(shoe: shoe),
          ),
        );
      },
      child: Stack(
        children: [
          Card(
            elevation: 8.0,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    shoe.imageUrl,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    shoe.name,
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(shoe.brand),
                      Text("\$${shoe.price.toStringAsFixed(2)}"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (shoe.trending)
            Positioned(
              top: 10,
              right: 0,
              child: Transform.rotate(
                angle: 0.25, // Adjust the angle as needed
                child: Text(
                  '🔥',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
