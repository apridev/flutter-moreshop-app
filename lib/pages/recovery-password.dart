import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class RecoveryPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleHeading() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Text(
            'Kamu lupa password?',
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        ),
      );
    }

    Widget subtitile() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Center(
          child: Text(
            'Masukkan alamat email kamu dan kami akan mengirimkan instruksi untuk mengatur ulang kata sandi akunmu.',
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium), textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.start,
          cursorColor: Colors.black12,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),
          // obscureText: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: backgroundColor3),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                   ),  
            // prefixIcon: Icon(Icons.person),
            hintText: "Email",
            hintStyle:
                backgroundTextStyle2.copyWith(
                  fontSize: 16,
                )
            // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
          ),
        ),
      );
    }

    Widget btnNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
          right: defaultMargin
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: (){}, 
          child: Text('Masuk', style: backgroundTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium
          ),)
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          backgroundColor: backgroundColor,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close_rounded,
                color: blackTextColor,
              )),
          centerTitle: true,
          title: Text(
            'Lupa Password',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          elevation: 0.5,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleHeading(),
          subtitile(),
          inputEmail(),
          btnNav()
        ],
      ),
    );
  }
}
