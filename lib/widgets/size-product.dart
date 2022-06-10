import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class SizeProduct extends StatelessWidget {

  String ukuran;

  SizeProduct({ required this.ukuran});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: searchColor, width: 1.3),
          borderRadius: BorderRadius.circular(12)),
      child: TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Text(
              ukuran,
              style: searchTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          )),
    );
  }
}
