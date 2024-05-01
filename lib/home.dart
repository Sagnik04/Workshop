import 'package:detection/page1.dart';
import 'package:detection/page2.dart';
import 'package:detection/page3.dart';
import 'package:detection/page4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Workshop",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black87,

      ),
      body:Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,right: 110),
              child: Text("WorkShop Detector",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text("By Sagnik Mukherjee",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                height: 50,
                width: 400,
                child: Center(child: Text("--Tools--",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
              ),
            ),
            SizedBox(height: 40,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                      },
                      child: Container(

                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffffecd2),Color(0xfffcb69f)
                            ]
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 220,left: 10),
                          child: Text("|Marking",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
                      },
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffd4fc79),Color(0xff96e6a1)
                              ]
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 220,left: 10),
                          child: Text("|Measurement",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
                      },
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffa1c4fd),Color(0xffc2e9fb)
                              ]
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 220,left: 10),
                          child: Text("|Cutting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));
                      },
                      child: Container(
                        height: 280,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffe6e9f0),Color(0xffeef1f5)
                              ]
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 220,left: 10),
                          child: Text("|Striking",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
                        ),
                      ),
                    ),
                  ),
              
                ],
              ),
            ),
            SizedBox(height: 80,),
            Center(child: Text("----xxxx----",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 40),))


          ],
        ),
      )

    );
  }}
