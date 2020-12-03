import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Ragamcakes/screens/menu/my_order.dart';

import 'cart.dart';
import 'item.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFBAAE),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFBAAE),     
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              new Image.asset('assets/images/cake.png', width: 180, height: 180,),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 120,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                          child: Text('20 - 30 mins', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 13),),
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
              
              Expanded(
                child: Container(    
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Color(0xFFFAFAFA),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ragam Cakes', style: TextStyle(fontSize: 30, color: Color(0xFFF15B5D), fontWeight: FontWeight.w600,)),
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
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(18.0),
                          child: Text('Popular Choices', style: TextStyle(fontSize: 22, color: Color(0xFF000000), fontWeight: FontWeight.w800),),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 140,
                                      margin: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                      color: Color(0xFFFCEFE7),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/dark_choco.jpg'),  fit: BoxFit.cover),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Choco 12 Orea Cake', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87)),
                                      SizedBox(height: 6.0,),
                                      Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                                    ],
                                  ),
                                 ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                },
                              ),

                              GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 140,
                                      margin: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                      color: Color(0xFFFCEFE7),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/wedding10.jfif'),  fit: BoxFit.cover),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Special Cream Cake', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87)),
                                      SizedBox(height: 6.0,),
                                      Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                                    ],
                                  ),
                                 ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                }
                              ),

                              GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 140,
                                      margin: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                      color: Color(0xFFFCEFE7),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/wedding8.jfif'),  fit: BoxFit.cover),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Strawberry White Cake', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87)),
                                      SizedBox(height: 6.0,),
                                      Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                                    ],
                                  ),
                                 ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                },
                              ),

                              GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 140,
                                      margin: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                      color: Color(0xFFFCEFE7),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/wedding2.jfif'),  fit: BoxFit.cover),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Orea White Cake', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87)),
                                      SizedBox(height: 6.0,),
                                      Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                                    ],
                                  ),
                                 ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                },
                              ),

                              GestureDetector(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 140,
                                      margin: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                      color: Color(0xFFFCEFE7),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/wedding1.jfif'),  fit: BoxFit.cover),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                      ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('White 4 layer Cake', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87)),
                                      SizedBox(height: 6.0,),
                                      Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                                    ],
                                  ),
                                 ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(18.0),
                          child: Text('Burger', style: TextStyle(fontSize: 22, color: Color(0xFF000000), fontWeight: FontWeight.w800),),
                        ),
                        
                        SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Classical Cheese", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                      Row(
                                                        children: [
                                                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                          SizedBox(width: 2.1),
                                                          Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                        ],
                                                     )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),
                          SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Triple layer Cheese", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹18', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                    //   Row(
                                                    //     children: [
                                                    //       Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    //       SizedBox(width: 2.1),
                                                    //       Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    //     ],
                                                    //  )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),
                          SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Pork Burger", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹18', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                    //   Row(
                                                    //     children: [
                                                    //       Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    //       SizedBox(width: 2.1),
                                                    //       Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    //     ],
                                                    //  )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),


                          Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(18.0),
                          child: Text('Snacks', style: TextStyle(fontSize: 22, color: Color(0xFF000000), fontWeight: FontWeight.w800),),
                        ),
                        
                        SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Crispy Chicken Wings", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹16', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                      Row(
                                                        children: [
                                                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                          SizedBox(width: 2.1),
                                                          Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                        ],
                                                     )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),
                          SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Triple layer Cheese", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹18', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                    //   Row(
                                                    //     children: [
                                                    //       Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    //       SizedBox(width: 2.1),
                                                    //       Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    //     ],
                                                    //  )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),
                          SizedBox(height: 10.0),
                        
                        Stack(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(16))),
                                  child: Row(
                                    children: <Widget>[         
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
                                                        Text("Pork Burger", maxLines: 2, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                                                        Text('\₹18', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF000000)))                             
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 6.0,),
                                                Text('Angus, beef, cheese, onion,', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)), 
                                                SizedBox(height: 6.0,),
                                                Container(
                                                  padding: EdgeInsets.only(right: 8, top: 4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('tomato jam, pickles', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                                    //   Row(
                                                    //     children: [
                                                    //       Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    //       SizedBox(width: 2.1),
                                                    //       Text('Popular', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                    //     ],
                                                    //  )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 6,)
                                              ],
                                            ),
                                          ),
                                          flex: 100,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                                  },
                                ),
                              ],
                          ),
                          SizedBox(height: 10.0),

                          Center(
                            child: Container(
                              width: 410,
                              height: 52.0,                  
                              child: RaisedButton(
                                hoverColor: Colors.black,
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                child: Text("Add to basket", style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),),
                                color: Color(0xFFF15B5D),
                                textColor: Colors.black,
                                splashColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => My_Order()));
                              },
                            ),
                        ),
                          ),
                        SizedBox(height: 10.0),




                      ],
                    ),
                  )
                ),
              )
            ]
          ),
        ],
      ),
    );
  }
}