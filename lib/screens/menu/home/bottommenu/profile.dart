import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xffff7b10),
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 55.0),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 35.0, left: 15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'), fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kelly Chan', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'Montserrat')),
                      Text('kellych@gmail.com', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500, fontSize: 14, fontFamily: 'Montserrat')),
                    ],
                  ),
                ),
              ],
            ),
              ),
              onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => edit()),
            // );
              },
            ),
            
            // Container(
            //   alignment: Alignment.topLeft,
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text('Settings', style: TextStyle(color: Colors.black, fontFamily: 'Montserrat', fontSize: 28, fontWeight: FontWeight.bold),)
            // ),
            
            SizedBox(height: 15.0,),

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
                          Text('Profile', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                          Spacer(flex: 2),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('Payment Method', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('Order History', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('Delivery Address', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('Settings', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('About us', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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
                      Text('Support Center', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                      Spacer(flex: 2),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black,))
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}