import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';
import 'package:moreshop_app/widgets/menu-profile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: backgroundColor,
          title: Text(
            'Profil',
            style:
                blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          automaticallyImplyLeading: false,
          elevation: 1,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 24,
                          left: defaultMargin,
                          right: defaultMargin,
                          bottom: 12),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: backgroundColor4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 24, right: 20),
                                      child: Image.asset(
                                        'assets/icon/icon-edit-profile.png',
                                        width: 24,
                                      )),
                                ],
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 24),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/img/profile1.png',
                                        width: 80,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Violeta Sarah',
                                        style: blackTextStyle.copyWith(
                                            fontSize: 14, fontWeight: semiBold),
                                      ),
                                      Text(
                                        '@violetasrh',
                                        style: blackTextStyle.copyWith(
                                            fontSize: 14, fontWeight: medium),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Column(
                        children: [
                          MenuProfile(namaMenu: 'Orderan Saya'),
                          MenuProfile(namaMenu: 'Favorit Produk'),
                          MenuProfile(namaMenu: 'Alamat Penerima'),
                          MenuProfile(namaMenu: 'Riwayat Pemesanan'),
                          MenuProfile(namaMenu: 'Voucher'),
                          MenuProfile(namaMenu: 'Konfirmasi Pembayaran'),
                          Container(
                            margin: EdgeInsets.only(
                                top: 12,
                                left: defaultMargin,
                                right: defaultMargin),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Keluar',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 12, fontWeight: semiBold),
                                ),
                                Icon(Icons.arrow_forward_ios_rounded, size: 18,)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
