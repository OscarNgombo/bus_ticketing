import 'package:bus_ticketing/utils/textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String assetName = 'assets/menuIcon.svg';
    return new Stack(
      children: <Widget>[
        Container(
          height: 289,
          width: MediaQuery.of(context).size.width,
          alignment: FractionalOffset.topLeft,
          padding: EdgeInsets.only(left: 32, top: 32, right: 25),
          decoration: new BoxDecoration(
            color: Color(0xffFF344C),
          ),
          child: new Row(
            children: <Widget>[
              SvgPicture.asset(
                assetName,
              ),
              Spacer(),
              GestureDetector(
                  // onTap: () {},
                  child: Icon(
                Icons.notifications,
                color: Colors.amber,
                size: 30,
              ))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 110, left: 20),
          child: RichText(
            text: TextSpan(
              text: 'Good Morning Mr. Jam\n',
              style: TextStyles.bodyTextStyle,
              children: <TextSpan>[
                TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                TextSpan(
                    text: 'Book a bus ticket',
                    style: TextStyles.bigHeadingTextStyle),
              ],
            ),
          ),
        )
      ],
    );
  }
}
