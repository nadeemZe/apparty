import 'package:flutter/material.dart';

class People extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
    ),
      body: Container(
        padding: EdgeInsets.only(top:20 ,left: 25,right: 35),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Schweinebarenmann Treffen',
              style: TextStyle(color: Colors.white, fontSize: 20),),
            Text('Michell',
              style: TextStyle(color: Colors.white70, fontSize: 12),),
            Text('4,78540, Wurzburg',
              style: TextStyle(color: Colors.white70, fontSize: 12),),
            SizedBox(height: 25,),
            Text('Dabei werden :',
              style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 7,),
            Row(
              children: [
                CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                SizedBox(width:3),
                Text('big boy',
                  style: TextStyle(color: Colors.white, fontSize: 12),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                SizedBox(width:3),
                Text('max boy',
                  style: TextStyle(color: Colors.white, fontSize: 12),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                SizedBox(width:3),
                Text('cute',
                  style: TextStyle(color: Colors.white, fontSize: 12),),
              ],
            ),
          ],
        ) ,
      ),

    );
  }
}