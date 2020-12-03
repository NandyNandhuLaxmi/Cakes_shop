import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/login/SignInScreen.dart';
import 'package:Ragamcakes/Responsive/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,     
        title: Container(
          alignment: Alignment.topRight,
          child: GestureDetector(
            child: Text('Log in', style: TextStyle(color: Color(0xFFF15B5D), fontWeight: FontWeight.w800)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
          ),
          ),
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFAFAFA),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Body(),
    );
  }
}