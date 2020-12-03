import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../categories.dart';

class Offers extends StatefulWidget {
  Offers({Key key}) :super(key: key);
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF15B5D),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10.0),
            child: Text('Lastest Offers', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white)),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10.0),
            child: Text('Find discount, offers,\nspecial cakes and more!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white)),
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Text('20 Cakes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),),
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SplashScreen()),
                // );
              },
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 280,
                            margin: const EdgeInsets.all(18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/dark_choco.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dark Hot Chocolate Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0,),
                                Row(
                                  children: [
                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                  SizedBox(width: 2.1),
                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5.0,),
                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                           )
                          ),
                        ],
                      ),
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                      },
                    ),

                    GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 280,
                            margin: const EdgeInsets.all(18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/dark_choco.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dark Cream Chocolate Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0,),
                                Row(
                                  children: [
                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                  SizedBox(width: 2.1),
                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5.0,),
                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                           )
                          ),
                        ],
                      ),
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}