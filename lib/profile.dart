import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'config.dart';

class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   int f=100;
  final List l1=['p1','p2','p3','p4'];
  final List l2=['p5','p6','p7','p8'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF314556),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/party.jpg'),fit: BoxFit.fill,),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    ),
                  ),
                ),
                Container(
                     height: MediaQuery.of(context).size.height/2.5,
                     width: MediaQuery.of(context).size.width,
                     padding:EdgeInsets.only(top: MediaQuery.of(context).size.height/30),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(icon: Icon(Icons.settings,color: Colors.white,size: 35,),
                            onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PerConfig()));
                            }),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundImage: AssetImage('assets/per.png'),radius: 30,),
                              SizedBox(height: MediaQuery.of(context).size.height/50,),
                              Text('Max Hild',style: TextStyle(color: Colors.white,fontSize: 20),),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('$f mill',style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.bold ),),
                                Text('Follower',style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.bold ),),
                              ],),
                            Column(
                              children: [
                                Text('8',style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.bold ),),
                                Text('Events',style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.bold ),),
                              ],),
                          ],
                        ),
                        Center(
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: (){
                              setState(() {
                                f=f+1;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Text('Follow',style: TextStyle(color: Colors.white,fontSize:10 ),),
                          ),
                        ),
                      ],
                     ),
                   ),
              ],
            ),
           Container(
             margin: EdgeInsets.only(left: 15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Meine nachste Events',style: TextStyle(color: Colors.white,fontSize:20),),
                 Container(
                   height: MediaQuery.of(context).size.height/4.5,
                   child: ListView.builder(
                     padding: EdgeInsets.zero,
                     scrollDirection: Axis.horizontal,
                     itemCount: l1.length,
                     itemBuilder: (context,index){
                       return Container(
                         margin: EdgeInsets.only(top: 7,right: 12),
                         height: MediaQuery.of(context).size.height/4.5,
                         width: MediaQuery.of(context).size.width/3.7,
                         decoration:BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage('assets/${l1[index]}.jpg',),fit: BoxFit.fill),
                         ) ,
                       );
                     },
                   ),
                 ),
                 Text('Meine vorherige Events',style: TextStyle(color: Colors.white,fontSize:20),),
                 Container(
                   height: MediaQuery.of(context).size.height/4.5,
                   child: ListView.builder(
                     padding: EdgeInsets.zero,
                     scrollDirection: Axis.horizontal,
                     itemCount: l2.length,
                     itemBuilder: (context,index){
                       return Container(
                         margin: EdgeInsets.only(top: 7,right: 12),
                         height: MediaQuery.of(context).size.height/4.5,
                         width: MediaQuery.of(context).size.width/3.7,
                         decoration:BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage('assets/${l2[index]}.jpg'),fit:BoxFit.fill),
                         ) ,
                       );
                     },
                   ),
                 ),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}