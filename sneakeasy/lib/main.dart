import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import your view models
import 'view_models/home_page_view_model.dart';
import 'view_models/wishlist_view_model.dart';
import 'view_models/filters_view_model.dart';

// Import your views
import 'views/home_page.dart';
import 'views/wishlist_page.dart';
import 'views/filters_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomePageViewModel()),
        ChangeNotifierProvider(create: (_) => WishlistViewModel()),
        ChangeNotifierProvider(create: (_) => FiltersViewModel()),
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
        '/wishlist': (context) => WishlistPage(),
        '/filters': (context) => FiltersPage(),
      },
    );
  }
}
