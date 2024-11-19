import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakeasy/models/filters_model.dart';
import 'package:sneakeasy/models/wishlist_model.dart';
import 'package:sneakeasy/views/wishlist_page.dart';

// Import your view models
import 'view_models/home_page_view_model.dart';
import 'view_models/wishlist_view_model.dart';
import 'view_models/filters_view_model.dart';

// Import your views
import 'views/home_page.dart';
import 'views/filters_page.dart';


void main() {
  Wishlist wishlist = Wishlist();
  Filters filters = Filters();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomePageViewModel(wishlist, filters)),
        ChangeNotifierProvider(create: (_) => FiltersViewModel(filters)),
        ChangeNotifierProvider(create: (_) => WishlistViewModel(Wishlist())),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneaker Tinder App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/filters': (context) => FilterView(),
        '/wishlist': (context) => WishlistPage(),
      },
    );
  }
}
