import 'package:chips_choice/chips_choice.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  int tag = 1;

  // multiple choice value
  List<String> tags = [];

  // list of string options
  List<String> options = [
    'All', 'Fast Food', 'Snacks',
    'Cookies', 'Bugger', 'Pizza',
    'Cake', 'Juice', 'Food', 'Chips',
  ];
  double _lowerValue = 50;
  double _upperValue = 180; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Filters",
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
          new FlatButton(
            onPressed: () {
              //TODO: Handle save
            },
            child: new Text('Reset', style: Theme.of(context) .textTheme .subhead .copyWith(color: Colors.black, fontWeight: FontWeight.w900))),
        ],
      ),
      body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Color(0xFFFFFFFF),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8.0),
                                Text('Sort by', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                Spacer(flex: 2),
                                
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
                            Text('Most Popular', style: TextStyle(color: Color(0xFFF15B5D), fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(EvaIcons.checkmarkOutline, color: Color(0xFFF15B5D),))
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
                            Text('Price High to Low', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                           
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
                            Text('Price Low to High', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            
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
                            Text('Nearest to me', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Montserrat')),
                            Spacer(flex: 2),
                            
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
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Filter', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: ChipsChoice<String>.multiple(
                      value: tags,
                      onChanged: (val) => setState(() => tags = val),
                      choiceItems: C2Choice.listFrom<String, String>(
                        source: options,
                        value: (i, v) => v,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      textDirection: TextDirection.ltr,
                      wrapped: true,
                      choiceStyle: C2ChoiceStyle(
                        showCheckmark: false,
                        labelStyle: const TextStyle(
                          fontSize: 16
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        
                        // color: Color(0xFFFFFFFF),
                        borderColor: Color(0xFFFFFFFF),
                      ),
                      choiceActiveStyle: const C2ChoiceStyle(
                        brightness: Brightness.dark,
                        borderShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          side: BorderSide(color: Color(0xFFF15B5D))
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Price', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$0.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('\$100.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                      ],
                    )
                  ),
                  Container(
              
                    alignment: Alignment.centerLeft,
                    child: FlutterSlider(
                      values: [1000, 15000],
                      rangeSlider: true,
                      //rtl: true,
                      ignoreSteps: [
                        FlutterSliderIgnoreSteps(from: 8000, to: 12000),
                        FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                      ],
                      max: 25000,
                      min: 0,
                      step: FlutterSliderStep(step: 100),

                      jump: true,

                      trackBar: FlutterSliderTrackBar(
                          activeTrackBarHeight: 5,
                          activeTrackBar: BoxDecoration(color: Color(0xFFF15B5D)),
                      ),
                      tooltip: FlutterSliderTooltip(
                        textStyle: TextStyle(fontSize: 17, color: Color(0xFFF15B5D)),
                      ),
                
                      handler: FlutterSliderHandler(
                       decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Color(0xFFF15B5D),
                        size: 25,
                      ),
                    ),
                    rightHandler: FlutterSliderHandler(
                      child: Icon(
                        Icons.circle,
                        color: Color(0xFFF15B5D),
                        size: 24,
                      ),
                    ),
                    disabled: false,

                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                        setState(() {});
                    },
                  )
                ),
                SizedBox(height: 20.0,),
                Container(
                width: 410,
                height: 52.0,
                child: RaisedButton(
                  hoverColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text("Apply", style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),),
                    color: Color(0xFFF15B5D),
                    textColor: Colors.black,
                    splashColor: Colors.white,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Check_Out()),
                      // );
                    },
                  ),
                ),

              

                ],
              ),
      ),

    );
  }
}