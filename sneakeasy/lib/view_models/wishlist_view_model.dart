import '../models/shoe_model.dart';
import '../models/wishlist_model.dart';

class WishlistViewModel {
  final Wishlist _wishlist;

  WishlistViewModel(this._wishlist);

  List<Shoe> getWishlist() {
    return _wishlist.likedShoeList;
  }

  void removeFromWishlist(Shoe shoe) {
    _wishlist.removeShoe(shoe);
    print('Shoe removed from wishlist: ${shoe.name}');
  }

  void buyShoe(Shoe shoe) {
    //we have to get pseudo links
    print('Redirecting to buy: ${shoe.link}');
  }
}
