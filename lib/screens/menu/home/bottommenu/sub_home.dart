import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../categories.dart';
import '../../setting.dart';
import '../bottommenu/offers.dart';
import '../bottommenu/profile.dart';


class Sub_Home extends StatefulWidget {
  @override
  _Sub_HomeState createState() => _Sub_HomeState();
}

class _Sub_HomeState extends State<Sub_Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
               children: [
                Container(
                  height: 42.8,
                  width: 350,
                  margin: const EdgeInsets.all(7.8),
                  child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                  prefixIcon: Icon(EvaIcons.searchOutline, color: Color(0xFF000000),),
                  hintText: 'What your caving a cakes',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F1F3),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F1F3), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F1F3), width: 1.2))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(child: Icon(EvaIcons.barChart2Outline, size: 35, color: Color(0xFFF15B5D),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),fullscreenDialog: false,));
                    },),
                ),
              ],
            ),
            SizedBox(height:10.0),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                           "Popular Choice",
                           style: TextStyle(
                           fontSize: 20,
                           color: Color(0xFFF15B5D),
                           fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.all(8.0),
                          child: InkWell(
                          child: Text(
                            "Show all",
                            style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Category(),fullscreenDialog: false,));
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
           ),
           SizedBox(height:10.0),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 GestureDetector(
                    child: Container(
                      width: 360,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/chocolate-cake-with-red-black.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chocolate Red Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5.0,),
                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                    SizedBox(width: 2.1),
                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),    
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                    },
                  ),

                  GestureDetector(
                    child: Container(
                      width: 360,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/chocolate-cake-with-white-cheese-cream.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Cheese Chocolate Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5.0,),
                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                    SizedBox(width: 2.1),
                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                    },
                  ),

                  GestureDetector(
                    child: Container(
                      width: 360,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/butter_cream.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Butter Cheese Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5.0,),
                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                    SizedBox(width: 2.1),
                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),         
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                    },
                  ),

                  GestureDetector(
                    child: Container(
                      width: 360,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/dark_choco.jpg'),  fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dark Hot Chocolate Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5.0,),
                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                    SizedBox(width: 2.1),
                                    Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                  
                                  ],
                                )
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Category())); 
                    },
                  ),
               ],
             ),
           ),
           SizedBox(height:10.0),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                           "New Cakes",
                           style: TextStyle(
                           fontSize: 20,
                           color: Color(0xFFF15B5D),
                           fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.all(8.0),
                          child: InkWell(
                          child: Text(
                            "Show all",
                            style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
           ),
           SizedBox(height:10.0),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('Cafe Western Cake ₹₹', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Black Forest Cake", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('RAGAM CAKES', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),
           GestureDetector(
             child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('assets/images/dark_choco.jpg'),
                    fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cream Chocolate", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 6.0),
                      Text('RAGAM CAKES', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6.0),
                      Row(
                        children: [
                          Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                          SizedBox(width: 2.1),
                          Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                          SizedBox(width: 5.0,),
                          Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      
                    ],
                  ), 
                ],
              ),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
             },
           ),

          ]
        )
      ),
      
    );
  }
}
  