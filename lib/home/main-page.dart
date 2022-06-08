import 'package:flutter/material.dart';
import 'package:moreshop_app/home/home-page.dart';
import 'package:moreshop_app/home/notification-page.dart';
import 'package:moreshop_app/home/profile-page.dart';
import 'package:moreshop_app/home/wishlist-page.dart';
import 'package:moreshop_app/template.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    Widget bottomNavbar(){
      return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: backgroundColor3,
              blurRadius: 2,
            ),
          ]
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              currentIndex = value;
              print(value);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 0 ? Image.asset('assets/icon/icon-home-active.png', width: 24,): Image.asset('assets/icon/icon-home.png', width: 24,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 1 ? Image.asset('assets/icon/icon-wishlist-active.png', width: 24,) : Image.asset('assets/icon/icon-wishlist.png', width: 24,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 2 ? Image.asset('assets/icon/icon-notification-active.png', width: 25,): Image.asset('assets/icon/icon-notification.png', width: 26,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.only(
                  top: 12
                ),
                child: currentIndex == 3 ? Image.asset('assets/icon/icon-profile-active.png', width: 24,): Image.asset('assets/icon/icon-profile.png', width: 24,)),
              label: '',
            ),
          ]
        ),
      );
    }

    Widget mainBody(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return WishlistPage();
          break;
        case 2:
          return NotificationPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
        return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavbar(),
      body: mainBody(),
    );
  }
}