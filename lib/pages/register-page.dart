import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moreshop_app/providers/hidden-password.dart';
import 'package:moreshop_app/template.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('Rebuild');

    final isHiddenPassword = Provider.of<HiddenPassword>(context);

    Widget inputNama() {
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
            hintText: "Nama",
            hintStyle:
                backgroundTextStyle2.copyWith(
                  fontSize: 16,
                )
            // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
          ),
        ),
      );
    }

    Widget inputUsername() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: TextField(
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
            hintText: "Username",
            hintStyle:
                backgroundTextStyle2.copyWith(
                  fontSize: 16,
                )
            // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
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

    Widget inputPassword() {
      return Consumer<HiddenPassword>(
        builder: (context, value, child) => Container(
          margin:
              EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            textAlign: TextAlign.start,
            cursorColor: Colors.black12,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold
            ),
            obscureText: value.isHiddenPassword,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: backgroundColor3),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                     ),  
              // prefixIcon: Icon(Icons.person),
              hintText: "Password",
              hintStyle:
                  backgroundTextStyle2.copyWith(
                    fontSize: 16,
                  ),
              suffixIcon: IconButton(onPressed: isHiddenPassword.hiddenPassword, icon: Icon(Icons.remove_red_eye))
            ),
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
          child: Text('Daftar', style: backgroundTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium
          ),)
        ),
      );
    }

    Widget privacyPolicy(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 30,
          right: 30,
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan> [
              TextSpan(
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
                text: 'Dengan membuat akun, Anda setuju dengan '
              ),
              TextSpan(
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
                text: "syarat ketentuan ",
                recognizer: TapGestureRecognizer()..onTap = (){
                  Navigator.pushNamed(context, '/syarat-kebijakan');
                }
              ),
              TextSpan(
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
                text: "dan kebijakan "
              ),
              TextSpan(
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
                text: "privasi kami.",
                recognizer: TapGestureRecognizer()..onTap = (){
                  Navigator.pushNamed(context, '/privasi-kami');
                }
              ),
            ]
          ),
        )
      );
    }

    Widget akunMasuk(){
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/register-page');
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: blackTextColor
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah punya akun? Masuk', style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ), textAlign: TextAlign.center,)
              ]
              ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(
            Icons.arrow_back_ios_rounded,
            color: blackTextColor,
          )),
          centerTitle: true,
          title: Text(
            'Daftar',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          elevation: 0,
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputNama(),
                inputUsername(),
                inputEmail(),
                inputPassword(),
                btnNav(),
                privacyPolicy(),
                akunMasuk()
              ],
            )
          ],
          ),
      ),
    );
  }
}