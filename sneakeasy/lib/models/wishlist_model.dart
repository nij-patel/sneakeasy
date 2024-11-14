import 'shoe_model.dart';

class Wishlist {
  final List<Shoe> likedShoeList = [];

  Wishlist();

  void addShoe(Shoe shoe) {
    likedShoeList.add(shoe);
  }

  void removeShoe(Shoe shoe) {
    likedShoeList.remove(shoe);
  }
}
