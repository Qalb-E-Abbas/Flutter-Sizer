import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sizer',
              theme: ThemeData.light(),
              home: HomePage(),
            );
          },
        );
      },
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
    return Scaffold(
      appBar: new AppBar(title: Text('Auto Adjust'),),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 100.0.w,
                            height: 20.0.h,
                          color: Colors.pink,
                        ), //Container
                        Container(
                          margin: EdgeInsets.only(left: 5.0.h, top: 0.5.h,),
                          width:80.0.w,
                          height: 18.0.h,
                          color: Colors.orangeAccent,
                          child:Column(
                            children: [

                              Container(
                                  margin: EdgeInsets.only( right: 6.0.w, top:5.0.h),
                                  child: Text('Add the edit option to the \nexisting usernames',
                                    style: TextStyle(fontSize: 12, color: Colors.black),)),

                              Container(
                                margin: EdgeInsets.only(left: 19.0.w,),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 12, top: 2),
                                      height: 3.2.h,
                                      width: 20.0.w,
                                      color: Colors.grey,

                                      child: Text('Maybe Later',
                                        style: TextStyle(color: Colors.white, fontSize: 10),),

                                    ),


                                    Container(

                                      child: Row(
                                        children: [
                                          Stack(children: [

                                            Container(child: IconButton(icon: Icon(Icons.comment,
                                              color: Colors.white, size: 10,),
                                                onPressed: (){})
                                            ),

                                            Container(
                                                margin: EdgeInsets.only(left: 39, top: 18),
                                                child: Text('0', style: TextStyle( color: Colors.white,

                                                    fontSize: 10),))

                                          ],),
                                          SizedBox(width: 20,),

                                          Text('Aug 28, 2018', style: TextStyle(fontSize: 10, color: Colors.white),)

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ), //Container
                        Container(
                          margin: EdgeInsets.only(left: 2.0.w, top: 0.5.h),
                          height: 18.0.h,
                          width:20.0.w,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5.0.h),
                                child: Icon(Icons.add, color: Colors.white, ),),
                              Text('2943', style: TextStyle(color: Colors.white,
                                  fontSize: 14, fontWeight: FontWeight.bold), ),
                              Text('Votes', style: TextStyle(color: Colors.white, fontSize: 12),)
                            ],
                          ),
                        ),


                        //Container
                      ], //<Widget>[]
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

