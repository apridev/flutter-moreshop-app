import 'package:flutter/material.dart';
import 'package:moreshop_app/template.dart';

class Expandedtile extends StatefulWidget {

  final String text;
  Expandedtile({required this.text});

  @override
  State<Expandedtile> createState() => _ExpandedtileState();
}

class _ExpandedtileState extends State<Expandedtile> {

  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>150){
      firstHalf=widget.text.substring(0, 150);
      secondHalf=widget.text.substring(151, widget.text.length);
    } else {
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.length == ""  ? Text(
        widget.text
      ): Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            flag? firstHalf: widget.text, style: searchTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
              height: 1.5
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: (){
              setState(() {
                flag = !flag;
              });
            },
            child: Row(
              children: [
                Text(
              flag? 'Lainnya' : 'Tutup Deskripsi',
              style: TextStyle(
                color: primaryColor
              ),
            ),
            Icon(flag? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_up_rounded, color: primaryColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}