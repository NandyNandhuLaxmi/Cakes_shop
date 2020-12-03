import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);
  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Spacer(),
        Container(
          height: 265,
          width: 265,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image), fit: BoxFit.cover 
            ),
          )
        ),
        // Image.asset(
        //   image,
        //   height: 265,
        //   width: 235,
        // ),
        // Spacer(flex: 1),
        SizedBox(height: 10.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFFF15B5D),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: TextStyle(color: Color(0xFFBABABA,)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}