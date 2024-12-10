import '../models/shoe_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoeViewModel {
  Shoe? _shoe;

  Future<void> getShoeDetails(int shoeId, List<Shoe> shoes) async {
    // Fetch the specific shoe by ID (simulating a database query or API call)
    _shoe = shoes.firstWhere((shoe) => shoe.id == shoeId,
        orElse: () => throw Exception('Shoe not found'));
  }

  void buyShoe() async {
    if (_shoe != null) {
      final Uri url = Uri.parse(_shoe!.link);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        print('Could not launch $url');
      }
    } else {
      print('No shoe details available to buy.');
    }
  }

  Shoe? get shoe => _shoe;
}
