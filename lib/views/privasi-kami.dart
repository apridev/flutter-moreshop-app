import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class PrivasiKami  extends StatelessWidget {

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
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_rounded, color: blackTextColor,))),
          centerTitle: true,
          title: Text('Privasi Kami', style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),),
          elevation: 0.7,
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMargin,
                right: defaultMargin
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kebijakan Privasi', style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Moreshop berkomitmen untuk menghormati dan melindungi privasi Anda. Kami memahami betapa pentingnya data pribadi Anda dan kami tidak akan membagikannya kepada orang-orang atau pihak ketiga lainnya tanpa izin Anda. Silakan baca Kebijakan Privasi berikut untuk mempelajari lebih lanjut tentang bagaimana kami akan menjunjung tinggi janji kami kepada Anda.', style: blackTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium, wordSpacing: 1
                  ), textAlign: TextAlign.justify,),
                  SizedBox(
                    height: 18,
                  ),
                  Text('Kebijakan ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan mengungkapkan data pribadi Anda yang kami peroleh saat Anda menggunakan ChatAja. Dengan terus menggunakan atau mengakses aplikasi kami, itu berarti Anda telah menerima praktik-praktik yang diuraikan dalam Kebijakan ini.', style: blackTextStyle.copyWith(
                    fontSize: 12, fontWeight: medium, wordSpacing: 1
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