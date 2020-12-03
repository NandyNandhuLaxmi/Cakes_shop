import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFFFFFFFF),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),),
              child: Image.asset('assets/images/266456-P6RE96-45.jpg',  fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}