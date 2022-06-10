import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';
import 'package:moreshop_app/widgets/wishlist-tile.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            toolbarHeight: 100,
            backgroundColor: backgroundColor,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  'Favorite',
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  '3 Product',
                  style:
                      blackTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
                )
              ],
            ),
            automaticallyImplyLeading: false,
            elevation: 1,
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WishlistTile(
                  namaProduk: 'Kemeja Flannel Uniqlo', 
                  harga: 'IDR499000 ', 
                  gambar: 'assets/img/product1.png', 
                  rating: '(1245)'
                ),
                WishlistTile(
                  namaProduk: 'T-Shirt Waffle Crew Neck...', 
                  harga: 'IDR599000 ', 
                  gambar: 'assets/img/product3.png', 
                  rating: '(1231)'
                ),
                WishlistTile(
                  namaProduk: 'Kemeja Flannel Uniqlo', 
                  harga: 'IDR499000 ', 
                  gambar: 'assets/img/product2.png', 
                  rating: '(1245)'
                ),
                WishlistTile(
                  namaProduk: 'Kemeja Flannel Uniqlo', 
                  harga: 'IDR499000 ', 
                  gambar: 'assets/img/product4.png', 
                  rating: '(1245)'
                ),
                SizedBox(
                  height: defaultMargin,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
