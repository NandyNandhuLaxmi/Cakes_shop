import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/menu/my_order.dart';

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      // backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [     
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/burger.jpg'), fit: BoxFit.cover,
                )
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Burgers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28),)),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(28)),
                  color: Color(0xFFFAFAFA),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text('128 Cakes', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 16 ),),
                            Spacer(),
                            Icon(EvaIcons.barChart2Outline, color: Color(0xFFF15B5D),)
                          ],
                        )
                      ),

                      GestureDetector(
                        child: Stack(
                          children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/dark_choco.jpg'),
                                          fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(right: 8, top: 4),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                    Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6.8),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    SizedBox(width: 5.0,),
                                                    Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 6,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 80,
                                                    height: 26.0,
                                                    alignment: Alignment.topRight,
                                                    margin: const EdgeInsets.all(5),
                                                    child: RaisedButton(
                                                      hoverColor: Colors.black,
                                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                                      child: Text("Offers", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),),
                                                      color: Color(0xFFF15B5D),
                                                      textColor: Colors.black,
                                                      splashColor: Colors.white,
                                                      onPressed: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order()));
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              
                                            ],
                                          ),
                                        ),
                                        flex: 100,
                                      )
                                    ],
                                  ),
                              ),
                            ],
                         ),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order(),fullscreenDialog: false,));
                         },
                      ),

                       GestureDetector(
                         child: Stack(
                          children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/dark_choco.jpg'),
                                          fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(right: 8, top: 4),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Butter Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                    Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6.8),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    SizedBox(width: 5.0,),
                                                    Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 6,),
                                              
                                              
                                            ],
                                          ),
                                        ),
                                        flex: 100,
                                      )
                                    ],
                                  ),
                              ),
                            ],
                         ),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order(),fullscreenDialog: false,));
                         },
                       ),

                       GestureDetector(
                         child: Stack(
                          children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/dark_choco.jpg'),
                                          fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(right: 8, top: 4),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Black Cream\nChocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                    Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6.8),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    SizedBox(width: 5.0,),
                                                    Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 6,),
                                              
                                              
                                            ],
                                          ),
                                        ),
                                        flex: 100,
                                      )
                                    ],
                                  ),
                              ),
                            ],
                         ),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order(),fullscreenDialog: false,));
                         },
                       ),

                       GestureDetector(
                         child: Stack(
                          children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/dark_choco.jpg'),
                                          fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(right: 8, top: 4),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                    Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6.8),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    SizedBox(width: 5.0,),
                                                    Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 6,),
                                              
                                              
                                            ],
                                          ),
                                        ),
                                        flex: 100,
                                      )
                                    ],
                                  ),
                              ),
                            ],
                         ),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order(),fullscreenDialog: false,));
                         },
                       ),

                       GestureDetector(
                         child: Stack(
                          children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(14)),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/dark_choco.jpg'),
                                          fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(right: 8, top: 4),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Dark Cake", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                    Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 6.8),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    SizedBox(width: 5.0,),
                                                    Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 6,),
                                              
                                              
                                            ],
                                          ),
                                        ),
                                        flex: 100,
                                      )
                                    ],
                                  ),
                              ),
                            ],
                         ),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order(),fullscreenDialog: false,));
                         }
                       ),
                      

             
             
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}