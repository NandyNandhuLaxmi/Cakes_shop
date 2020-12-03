import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/login/SignInScreen.dart';
import 'package:Ragamcakes/screens/login/create_acct.dart';
import 'package:Ragamcakes/screens/login/create_acct.dart';
import 'package:Ragamcakes/screens/splash/components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {
  final kPrimaryColor = Color(0xFFF15B5D);
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Find cake you love",
      "text": "Discover the best foods from\nover 1,000 cakes.",
      "image": "assets/images/undraw_Birthday_cake_2wxy.png"
    },
    {
      "title": "Fast Delivery",
      "text": "Fast delivery to your home, office \n and wherever you are",
      "image": "assets/images/undraw_On_the_way_re_swjt.png"
    },
    {
      "title": "Live Tracking",
      "text": "Real time tracking of your food \n on the app after ordered",
      "image": "assets/images/undraw_best_place_r685.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                  title: splashData[index]['title'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    Container(
                      width: double.infinity,
                      height: 52.0,
                      child: RaisedButton(
                        hoverColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Create Account", style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),),
                        color: Color(0xFFF15B5D),
                        textColor: Colors.black,
                        splashColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreateAcct()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Container(
                      width: double.infinity,
                      height: 52.0,
                      child: RaisedButton(
                        hoverColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(EvaIcons.facebook, size: 20, color: Colors.black,),
                            SizedBox(width: 6.0),
                            Text("Continue with Facebook", style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),),
                          ],
                        ),
                        color: Color(0xFFF1F0F6),
                        textColor: Colors.black,
                        splashColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInScreen()),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6, 
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor: Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}