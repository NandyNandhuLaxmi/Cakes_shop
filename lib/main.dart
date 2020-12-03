import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ragam_Cakes',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "roboto",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFFFFFFFF),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),),
              child: Image.asset('assets/images/14668.jpg',  fit: BoxFit.cover,),
                    ),
                  ),
       SizedBox(
         height: size.height,
         child: Column(
          children: [
           Expanded(  
             child: Container(
               alignment: Alignment.bottomCenter,
               margin: EdgeInsets.only(top: size.height * 0.6),
               width: double.infinity,
               height: 500,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                 color: Color(0xFFF15B5D),
               ),
               child: Padding(
                 padding: const EdgeInsets.all(28),
                 child: Column(
                   children: [
                     Container(
                       alignment: Alignment.topLeft,
                       child: Text('Ragam Cakes', textAlign: TextAlign.left, style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 38))),
                     SizedBox(height: 10.8,),
                     Row(
                       children: [
                         Text('Discover the best snacks from\nover 1,000 cakes.', style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.w500, fontSize: 18))
                       ],
                     ),
                     SizedBox(height: 18.8,),
                     GestureDetector(
                       child: Align(
                         alignment: Alignment.topLeft,
                         child: Container(
                           width: 200,
                           height: 48,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(30),
                           ),
                           child: Center(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('Get Started', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),),
                             ),
                           ),
                         ),
                       ),
                       onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => SplashScreen()),
                          );
                       },
                     ),
                     Spacer(),
                   ]
                 ),

               )
             ),
           )
                 ]
               ),
       ),
        ],
      ),
    );
  }
}
