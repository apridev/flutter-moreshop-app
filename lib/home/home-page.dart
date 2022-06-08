import 'package:flutter/material.dart';
import 'package:moreshop_app/produk-home.dart';
import 'package:moreshop_app/providers/wishlist-page.dart';
import 'package:moreshop_app/template.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    final isWishlistProduct = Provider.of<WishlistProduct>(context, listen: false);
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          centerTitle: true,
          title: Text(
            'Moreshop',
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icon/icon_shop.png',
                  width: 18,
                  color: blackTextColor,
                ))
          ],
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                'assets/icon/icon_menu.png',
                width: 18,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 45,
                        child: TextField(
                          cursorColor: primaryColor,
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) {
                            print("Search");
                          },
                          // obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 1
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: blackTextColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: searchColor)),
                            // prefixIcon: Icon(Icons.person),
                            prefixIcon: Icon(
                              Icons.search,
                              color: searchColor, size: 24,
                            ),
                            hintText: "Cari Produk",
                            hintStyle:
                                backgroundTextStyle2.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          context: context, 
                          builder: (context) => DraggableScrollableSheet(
                            maxChildSize: 0.9,
                            minChildSize: 0.3,
                            initialChildSize: 0.5,
                            builder: (_, controller) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)
                                ),
                              color: backgroundColor,
                              ),
                              padding: EdgeInsets.all(16),
                              child: ListView(
                                controller: controller,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: backgroundColor2
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          IconButton(onPressed: (){}, icon: Icon(Icons.close, color: backgroundColor,)),
                                            Text('Filter', style: blackTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: semiBold
                                            ),),
                                            IconButton(onPressed: (){
                                              Navigator.pop(context);
                                            }, icon: Icon(Icons.close))
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        child: Image.asset(
                          'assets/icon/icon_filter.png',
                          width: 18,
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 24, left: defaultMargin, right: 15),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 12),
                            child: Image.asset(
                              'assets/img/border1.png',
                              width: 228,
                              height: 114,
                            )),
                        Image.asset(
                          'assets/img/border2.png',
                          width: 228,
                          height: 114,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/scroll.png',
                        width: 42,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 18, left: defaultMargin, right: defaultMargin),
                  child: Text(
                    'Kategory',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                // !Kategori
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 18, left: defaultMargin, right: 10),
                    child: Row(
                      children: [
                        // ? Kategori 1
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Semua',
                                style: backgroundTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                        // ? Kategori 2
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: categoryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Nike',
                                style: categoryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                        // ? Kategori 3
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: categoryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Adidas',
                                style: categoryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                        // ? Kategori 4
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: categoryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Rip Curl',
                                style: categoryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                        // ? Kategori 5
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: categoryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Volcom',
                                style: categoryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                        // ? Kategori 6
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: categoryColor),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                'Puma',
                                style: categoryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: medium),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 18, left: defaultMargin, right: defaultMargin),
                  child: Text(
                    'Populer',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: defaultMargin, bottom: defaultMargin),
                    child: Row(
                      children: myList.map((data) {
                        return Container(
                          margin: EdgeInsets.only(top: 18, right: 18),
                          width: 160,
                          height: 250,
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage('${data['gambar']}'),
                                        fit: BoxFit.fill
                                      )
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Consumer<WishlistProduct>(
                                        builder: (context, value, child) => InkWell(
                                          onTap: isWishlistProduct.wishlistProduct,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(top: 8, right: 8),
                                            child: value.isWishlistProduct == true ? Image.asset(
                                              'assets/icon/icon_like.png',
                                              width: 30,
                                            ) : Image.asset(
                                              'assets/icon/icon_like_active.png',
                                              width: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(top: 14, left: 8, right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${data['namaProduk']}',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: semiBold,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'IDR ${data['harga']}',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 12, fontWeight: medium),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '(${data['rating']})',
                                          style: searchTextStyle.copyWith(
                                              fontSize: 12, fontWeight: medium),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Detail Produk',
                                                    style: backgroundTextStyle
                                                        .copyWith(
                                                            fontSize: 10,
                                                            fontWeight: medium),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: primaryColor,
                                          width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/icon/icon_shop_primary.png', width: 20,),
                                        ],
                                      ),
                                    ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: Text(
                    'Terbaru',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: defaultMargin, bottom: defaultMargin),
                    child: Row(
                      children: productList.map((data) {
                        return Container(
                          margin: EdgeInsets.only(top: 18, right: 18),
                          width: 160,
                          height: 250,
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage('${data['gambar']}'),
                                        fit: BoxFit.fill
                                      )
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Consumer<WishlistProduct>(
                                        builder: (context, value, child) => InkWell(
                                          onTap: isWishlistProduct.wishlistProduct,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(top: 8, right: 8),
                                            child: value.isWishlistProduct == true ? Image.asset(
                                              'assets/icon/icon_like.png',
                                              width: 30,
                                            ) : Image.asset(
                                              'assets/icon/icon_like_active.png',
                                              width: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(top: 14, left: 8, right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${data['namaProduk']}',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: semiBold,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'IDR ${data['harga']}',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 12, fontWeight: medium),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        Image.asset(
                                          'assets/icon/icon_star.png',
                                          width: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '(${data['rating']})',
                                          style: searchTextStyle.copyWith(
                                              fontSize: 12, fontWeight: medium),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 105,
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Detail Produk',
                                                    style: backgroundTextStyle
                                                        .copyWith(
                                                            fontSize: 10,
                                                            fontWeight: medium),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              )),
                                        ),
                                        Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: primaryColor,
                                          width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/icon/icon_shop_primary.png', width: 20,),
                                        ],
                                      ),
                                    ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
