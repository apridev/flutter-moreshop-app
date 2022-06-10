import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class MenuProfile extends StatelessWidget {

  String namaMenu;

  MenuProfile({
    required this.namaMenu
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: 12,left: defaultMargin, right: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                namaMenu,
                style:
                    blackTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
              ),
              Icon(Icons.arrow_forward_ios_rounded, size: 18,)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 4, left: defaultMargin, right: defaultMargin),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
