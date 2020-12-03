import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/menu/chat/chat.dart';
import 'package:Ragamcakes/screens/menu/tracker/map_trackorder.dart';

class Track_Order extends StatefulWidget {
  @override
  _Track_OrderState createState() => _Track_OrderState();
}

class _Track_OrderState extends State<Track_Order> {
  bool complete = true;
  int currentStep = 0;
  List<Step> mySteps = [
    Step(
        isActive: true,
        title: Text("Order select"),
        content: Text("")
    ),
    Step(
        isActive: false,
        title: Text("Order confirmed"),
        content: Text("")
    ),
    Step(
        isActive: false,
        title: Text("Preparing your order"),
        content: Text("")
    ),
    Step(
        isActive: false,
        title: Text("Orders ready to cake"),
        content: Text("")
    ),
    Step(
        isActive: false,
        title: Text("Rider's picking up your order"),
        content: Text("")
    ),
    Step(
        isActive: false,
        title: Text("Rider's nearby your place"),
        content: Text("")
    ),
  ];

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
        // actions: [
        //   IconButton(
        //   icon: Icon(
        //     EvaIcons.messageCircleOutline,
        //     color: Color(0xFFF15B5D),
        //   ),
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
        //   }
        // ),
        // ],
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
          InkWell(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stepper(
                steps: mySteps,
                currentStep: currentStep,
                onStepTapped: (step) => goTo(step),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Map_TrackOrder()));
            },
          ),
          
        ]
      ),
      bottomSheet: Container(
        height: 70,
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        color: Colors.white,
        child: Container(
          width: 410,
          height: 55.0,
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(5.0),
          child: RaisedButton(
            hoverColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            child: Text("Cancel your order", style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w800, color: Colors.black),),
              color: Color(0xFFF1F0F6), textColor: Colors.black, splashColor: Colors.white,
              onPressed: () {  
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Check_Out()));
              },
          ),
        ),
      ),
    );
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }
}

