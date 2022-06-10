import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class WishlistTile extends StatelessWidget {

  String namaProduk;
  String harga;
  String gambar;
  String rating;

  WishlistTile({
    required this.namaProduk,
    required this.harga,
    required this.gambar,
    required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
              width: 100,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                        gambar,
                      ),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaProduk,
                      style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      harga,
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 5,
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
                          rating,
                          style: searchTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Detail',
                            style: backgroundTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(primaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Keranjang',
                              style: backgroundTextStyle.copyWith(
                                  fontSize: 12, fontWeight: medium),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icon/icon_like_active.png',
                    width: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
