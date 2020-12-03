import 'package:Ragamcakes/screens/menu/home/bottommenu/sub_home.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../categories.dart';
import '../../setting.dart';
import 'menu.dart';
import 'menu1.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: TextStyle(
                      fontSize: 17.8,
                      color: Colors.black54,
                      fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                        ),
                        Icon(EvaIcons.arrowIosDownwardOutline, color: Color(0xFFF15B5D), size: 32,)
                      ],
                    ),
                  ],
                ),
              ),
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
            SizedBox(height: 8.0),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                            color: Color(0xFFFCEFE7),
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: IconButton(icon: SvgPicture.asset('assets/icons/cake-slice.svg', width: 60, height: 60,), 
                            onPressed: () { 
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Category()),
                            ); 
                          },),
                        ),
                        Text('Delicious Cakes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                       ],
                      ),
                      Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/birthday-cake.svg', width: 60, height: 60,), 
                                  onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                },),
                                ),
                                Text('Kids Cakes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/cake.svg', width: 60, height: 60,), 
                                  onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                   },),
                                ),
                                Text('Drawing Cakes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/wedding-cake.svg', width: 60, height: 60,), 
                                  onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                   },),
                                ),
                                Text('Wedding Cakes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/cheesecake.svg', width: 60, height:60, ), onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                   },),
                                ),
                                Text('Sign Cakes', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/cake (1).svg', width: 60, height: 60,), 
                                  onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                   },),
                                ),
                                Text('Fresh Butter', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/cake (2).svg', width: 60, height: 60,), onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                   },),
                                ),
                                Text('Butter Cream', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                  color: Color(0xFFFCEFE7),
                                  borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: IconButton(icon: SvgPicture.asset('assets/icons/cake (3).svg', width: 60, height: 60, ), 
                                  onPressed: () { 
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Category()),
                                  );
                                 },),
                                ),
                                Text('Photo Cake', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF000000))),
                              ],
                            ),       
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      margin: const EdgeInsets.all(10.0),
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
                            Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                            SizedBox(width: 2.1),
                            Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                            SizedBox(width: 5.0,),
                            Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                     )
                    ),
                  ],
                ),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Menu1())); 
                },
              ),
              
              SizedBox(height: 10,),
              GestureDetector(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      margin: const EdgeInsets.all(10.0),
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
                            Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                            SizedBox(width: 2.1),
                            Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                            SizedBox(width: 5.0,),
                            Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                     )
                    ),
                  ],
                ),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Menu1())); 
                },
              ),
              SizedBox(height: 10,),

              GestureDetector(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/cupcake.jpg'),  fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cup Cake', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8.0),
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
                     )
                    ),
                  ],
                ),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Menu1())); 
                },
              ),           
          ],
        ),
      ),
      
    );
  }
}