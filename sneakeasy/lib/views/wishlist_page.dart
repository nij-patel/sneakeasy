import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/wishlist_view_model.dart';
import 'shoe_detail_view.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistViewModel = Provider.of<WishlistViewModel>(context);
    var wishlist = wishlistViewModel.getWishlist();

    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: wishlist.isEmpty
          ? Center(
              child: Text(
                'No shoes in wishlist!',
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: wishlist.length,
              itemBuilder: (context, index) {
                var shoe = wishlist[index];
                return ListTile(
                  leading: Image.network(shoe.imageUrl),
                  title: Text(shoe.name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      wishlistViewModel.removeFromWishlist(shoe);
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoeDetailView(shoe: shoe),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
