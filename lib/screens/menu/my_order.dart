import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/menu/check_out.dart';

class My_Order extends StatefulWidget {
  @override
  _My_OrderState createState() => _My_OrderState();
}

class _My_OrderState extends State<My_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "My Order",
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
             children: <Widget>[
               SizedBox(height: 10.0),
                Container(       
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.blue,
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
                                Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                Text("RAGAM CAKE", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54)),
                                  SizedBox(height: 4.0,),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 18),
                                        Text('4.9', style: TextStyle(fontSize: 14, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                        SizedBox(width: 5.0,),
                                        Text('(124 rating)', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4.0,),

                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(EvaIcons.pin, color: Color(0xFFF15B5D), size: 18),
                                        Text('123 Amman Kovil Street', style: TextStyle(fontSize: 14, color: Colors.black45, fontWeight: FontWeight.bold)),
                            
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
                SizedBox(height: 40),

                Container(
                color: Color(0xFFFAFAFA),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(width: 8.0),
                            Text('Biscuit Wapper X4', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                              alignment: Alignment.topRight,
                              child: Text('\₹16', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => profile()),
                        // );
                      },
                    ),
                    Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),

                    GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        Text('Orange Juice X2', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                        Spacer(flex: 2),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('\₹14', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => profile()),
                    // );
                  },
                ),
                Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),

                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        Text('Cheese Layer X2', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                        Spacer(flex: 2),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('\₹12', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => profile()),
                    // );
                  },
                ),
                Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),

                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        Text('Bread Smoofer X5', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                        Spacer(flex: 2),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('\₹12', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => profile()),
                    // );
                  },
                ),
                Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Add more cake', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFF15B5D)))
                ),
                Container(
                color: Color(0xFFFFFFFF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(width: 8.0),
                            Text('Delivery instructions', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                              alignment: Alignment.topRight,
                              child: Row(
                                children: [
                                  Text('Add notes', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.w700)),
                                  Icon(Icons.add, size: 25, color: Color(0xFFF15B5D),),
                                ],
                              ))
                          ],
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => profile()),
                        // );
                      },
                    ),
                    Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),

                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 8.0),
                              Text('Subtotal', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                              Spacer(flex: 2),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text('\₹64.00', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 8.0),
                              Text('Delivery Cost', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18, fontFamily: 'Montserrat')),
                              Spacer(flex: 2),
                              Align(
                              alignment: Alignment.topRight,
                              child: Text('Free', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)))
                            ],
                          ),
                        ),
                      ],
                    ),
                
                Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),

                  ],
                ),
              ),

              SizedBox(height: 15.0),

              Container(
                width: 410,
                height: 52.0,
                child: RaisedButton(
                  hoverColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text("Check out", style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),),
                    color: Color(0xFFF15B5D),
                    textColor: Colors.black,
                    splashColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Check_Out()),
                      );
                    },
                  ),
                ),

                  ],
                ),
              ),
          ],
        ),
      ),
      
    );
  }
}

