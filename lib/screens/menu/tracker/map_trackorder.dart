import 'dart:collection';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/menu/chat/chat.dart';

class Map_TrackOrder extends StatefulWidget {
  @override
  _Map_TrackOrderState createState() => _Map_TrackOrderState();
}

class _Map_TrackOrderState extends State<Map_TrackOrder> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Track your order",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),     
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              EvaIcons.messageCircleOutline,
              color: Color(0xFFF15B5D),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
            }
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [     
              Container(
                height: 240,
                color: Colors.white,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text('Estimate Delivery Time', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 10),
                    Text('05:30PM', style: TextStyle(color: Color(0xFFF15B5D), fontWeight: FontWeight.bold, fontSize: 28)),
                    SizedBox(height: 10),
                    Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
                    Stack(
                      children: <Widget>[
                        Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14)),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/person.jpg'),
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
                                                Text("Your Rider", maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                    Text('4.9', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),            
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          
                                          Container(
                                            // padding: EdgeInsets.only(right: 8, top: 4),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Jason Paul", maxLines: 2, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                                                Text('(124 rating)', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
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
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            
          ),       
        ]
      ),
    );
  }
}

