import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:Ragamcakes/screens/menu/categories.dart';
import 'package:Ragamcakes/screens/menu/tracker/track_order.dart';

class Check_Out extends StatefulWidget {
  @override
  _Check_OutState createState() => _Check_OutState();
}

class _Check_OutState extends State<Check_Out> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Check out",
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
        child: SafeArea(
          child: Column(
            children: [
              Stack(
               children: <Widget>[
                  Container( 
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Delivery Address", maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                                  SizedBox(height: 8.0),
                                  Text("RAGAM CAKE", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54)),
                                    SizedBox(height: 7.0,),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text('123 Amman Kovil Street', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold)),
                                          Spacer(),
                                          Text('Change', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),                 
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 4.0,),

                                    
                                    
                                    SizedBox(width: 6,),
                                    
                                 ],
                                ),
                              ),
                              flex: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  Stack(
               children: <Widget>[
                  Container( 
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Text("Payment Method", maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                                      Spacer(),
                                      Text("Add", maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFFF15B5D))),
                                    ],
                                  ),
                                  Container(
                                    // width: double.infinity,
                                    height: 70.0,
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      autocorrect: true,
                                      decoration: InputDecoration(                                     
                                      hintText: 'Payment',
                                      hintStyle: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w600,),
                                      filled: true,
                                      fillColor: Color(0xFFF8F8F8),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.2)
                                      )
                                    ),
                                  ),
                                ),

                                Container(
                                    // width: double.infinity,
                                    height: 70.0,
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      autocorrect: true,
                                      decoration: InputDecoration(                                     
                                      hintText: 'jacky@payment.in',
                                      hintStyle: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w600,),
                                      filled: true,
                                      fillColor: Color(0xFFF8F8F8),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.2)
                                      )
                                    ),
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
                  SizedBox(height: 10.0),

                  Container(
                    height: 50.0,
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("Enter Coupon", maxLines: 2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
                        Spacer(),
                        Text('HUNGRY10', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),

                  Container(
                    
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Summary', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold))),
                        SizedBox(height: 8.5),
                      Container(
                        child: Row(
                          children: [
                            Text('Subtotal', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                              alignment: Alignment.topRight,
                              child: Text('\₹64.00', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                      SizedBox(height: 8.5),
                      Container(
                        child: Row(
                          children: [
                            Text('Delivery Cost', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                            alignment: Alignment.topRight,
                            child: Text('Free', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                      SizedBox(height: 8.5),
                      Container(
                        child: Row(
                          children: [
                            Text('Discount', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                            alignment: Alignment.topRight,
                            child: Text('- \₹6.4', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
                      Divider(color: Color(0xFFF1F1F1), indent: 10, endIndent: 10, thickness: 2,),
                      Container(
                        child: Row(
                          children: [
                            Text('Total', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                            alignment: Alignment.topRight,
                            child: Text('\₹57.60', style: TextStyle(color: Color(0xFFF15B5D), fontSize: 22, fontWeight: FontWeight.bold)))
                          ],
                        ),
                      ),
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
                    child: Text("Send Order", style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),),
                      color: Color(0xFFF15B5D),
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      onPressed: () => _sendOrder(context),
                    ),
                  ),
            ]
          ),
        ),
      )
    );
  }
}

  _sendOrder(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Stack(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            color: Colors.black54,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
          ),
          
          
          Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  child: Column(
                    children: [
                      Text('Thank you for', style: TextStyle(color: Color(0xFFF15B5D), fontWeight: FontWeight.w800, fontSize: 28)),
                      Text('your order', style: TextStyle(color: Color(0xFFF15B5D), fontWeight: FontWeight.w800, fontSize: 28)),
                    ],
                  )
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Text('You can track the delivery', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black54)),
                      Text('the "Orders" section.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black54)),
                    ],
                  )
                ),
                SizedBox(height: 20),
                Container(
                  width: 410,
                  height: 52.0,
                  child: RaisedButton(
                    hoverColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    child: Text("Track my Order", style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),),
                      color: Color(0xFFF15B5D),
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Track_Order()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.0),
              Container(
              width: 410,
              height: 52.0,
              child: RaisedButton(
                hoverColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: Text("Order something else", style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),),
                  color: Color(0xFFFFFFFF),
                  textColor: Colors.black,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Category()),
                    );
                  },
                ),
              ),
              ],
            ),
          ),
              
  
        ],
      );
    });
  }