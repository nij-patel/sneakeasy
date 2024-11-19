import 'package:flutter/material.dart';

import '../models/shoe_model.dart';
import '../models/wishlist_model.dart';

class WishlistViewModel extends ChangeNotifier {
  final Wishlist _wishlist;

  WishlistViewModel(this._wishlist);

  List<Shoe> getWishlist() {
    return _wishlist.likedShoeList;
  }

  void addShoe(Shoe shoe) {
    if (!getWishlist().contains(shoe)){
      _wishlist.addShoe(shoe);
      print('Shoe added to wishlist: ${shoe.name}');
    } else {
      print('Shoe was already in wishlist: ${shoe.name}');
    }
  }

  void removeFromWishlist(Shoe shoe) {
    _wishlist.removeShoe(shoe);
    print('Shoe removed from wishlist: ${shoe.name}');
    notifyListeners();
  }

  void buyShoe(Shoe shoe) {
    //we have to get pseudo links
    print('Redirecting to buy: ${shoe.link}');
  }
}
