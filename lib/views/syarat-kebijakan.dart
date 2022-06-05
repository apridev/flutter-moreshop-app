import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class SyaratKebijakan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded, color: blackTextColor,)),
          centerTitle: true,
          title: Text('Syarat Kebijakan', style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),),
          elevation: 0.7,
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: 
            [Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMargin,
                right: defaultMargin
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Syarat & Ketentuan', style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Syarat dan ketentuan penggunaan ini (“Ketentuan Penggunaan”) mengatur hubungan antara PT Properti Bawa Untung (“PUNYA”, “kami”, atau “milik kami”) dengan pelanggannya (“Pelanggan”, “Anda”) sehubungan dengan Layanan (sebagaimana didefinisikan di bawah ini).', style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                    wordSpacing: 1,
                  ), textAlign: TextAlign.justify,),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Mohon tinjau Ketentuan Penggunaan ini secara saksama. Dengan menekan tombol “DAFTAR AKUN”, Pelanggan menyatakan bahwa Pelanggan telah membaca, memahami, menerima, menyetujui, dan menyatakan bersedia terikat terhadap Ketentuan Penggunaan ini.', style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                    wordSpacing: 1,
                  ), textAlign: TextAlign.justify,),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Jika Pelanggan tidak setuju terhadap Ketentuan Penggunaan dan menekan tombol “DAFTAR AKUN” secara tidak sengaja atau kesalahan, mohon untuk segera membatalkan akun Anda dan secara permanen menghapus aplikasi dari perangkat Anda.', style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                    wordSpacing: 1,
                  ), textAlign: TextAlign.justify,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}