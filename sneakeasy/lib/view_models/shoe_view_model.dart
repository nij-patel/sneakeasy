import '../models/shoe_model.dart';

class ShoeViewModel {
  Shoe? _shoe;

  Future<void> getShoeDetails(int shoeId, List<Shoe> shoes) async {
    // Fetch the specific shoe by ID (simulating a database query or API call)
    _shoe = shoes.firstWhere((shoe) => shoe.id == shoeId,
        orElse: () => throw Exception('Shoe not found'));
  }

  void buyShoe() {
    if (_shoe != null) {
      print('Redirecting to buy: ${_shoe!.link}');
      // Add logic to redirect to _shoe!.link
    } else {
      print('No shoe details available to buy.');
    }
  }

  Shoe? get shoe => _shoe;
}
