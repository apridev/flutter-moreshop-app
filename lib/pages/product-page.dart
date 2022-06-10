import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';
import 'package:moreshop_app/widgets/expanded-tile.dart';
import 'package:moreshop_app/widgets/size-product.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: blackTextColor,
            size: 18,
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 12, left: defaultMargin, right: defaultMargin),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/img/product04.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: backgroundColor2),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: backgroundColor2),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: backgroundColor2),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 24, left: defaultMargin, right: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Heattech Cotton Extra Warm Crew Neck T-Shirt Uniqlo',
                              style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: semiBold,
                                  height: 1.7),
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/icon/icon_like.png',
                            width: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Cardigan',
                        style: searchTextStyle.copyWith(
                            fontSize: 12, fontWeight: semiBold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon/icon_star.png',
                            width: 15,
                          ),
                          Image.asset(
                            'assets/icon/icon_star.png',
                            width: 15,
                          ),
                          Image.asset(
                            'assets/icon/icon_star.png',
                            width: 15,
                          ),
                          Image.asset(
                            'assets/icon/icon_star.png',
                            width: 15,
                          ),
                          Image.asset(
                            'assets/icon/icon_star.png',
                            width: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            ('(2141)'),
                            style: searchTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ukuran',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Informasi',
                            style: searchTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizeProduct(ukuran: 'XS'),
                            SizeProduct(ukuran: 'S'),
                            SizeProduct(ukuran: 'M'),
                            SizeProduct(ukuran: 'L'),
                            SizeProduct(ukuran: 'XL'),
                            SizeProduct(ukuran: 'XXL'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Deskripsi',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Expandedtile(text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."),
                      SizedBox(
                        height: defaultMargin,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(color: backgroundColor, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, 2),
          )
        ]),
        child: Container(
          margin: EdgeInsets.only(
            right: defaultMargin
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total', style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),),
                    SizedBox(
                      height: 2,
                    ),
                    Text('IDR399000', style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold
                    ),),
                  ],
                ),
              ),
              Container(
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextButton(
                  onPressed: (){}, 
                  child: Text('Beli Sekarang', style: backgroundTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
