import 'package:flutter/material.dart';
import 'people.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Circle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Circle',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon:FaIcon(FontAwesomeIcons.slidersH,color: Colors.white,size: 20,),
          onPressed:(){
          } ,
        ),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,size: 25,),
              onPressed: null)
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/10,),
        color: Colors.transparent,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            itemBuilder:(context,index){
              return Container(
                height: MediaQuery.of(context).size.height/3.5,
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.only(left: 20,right: 26),
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage('assets/p5.jpg'),fit:BoxFit.fill)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Hausparty',style: TextStyle(color: Colors.white,fontSize: 20),),
                        IconButton(  icon: FaIcon(FontAwesomeIcons.ellipsisV,color: Colors.white,size: 20,),
                                     onPressed: null,
                                     padding: EdgeInsets.zero,
                                      )
                      ],
                    ),
                    Text('Ich',style: TextStyle(color: Colors.white70,fontSize: 12),),
                    Text('97070,Wurzburg',style: TextStyle(color: Colors.white70,fontSize: 12),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                        CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                        CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                        CircleAvatar(radius: 21,backgroundImage: AssetImage('assets/per.png'),),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>People()));
                            },
                            child: Text('+ 13 Sind dabei',style: TextStyle(color: Colors.white70,fontSize: 14),)),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Text('23',style:TextStyle(color: Colors.white,fontSize:20),),
                        SizedBox(width:3,),
                        Text('April 2021, 20:00Uhr',style: TextStyle(color: Colors.white70,fontSize: 15),),
                        SizedBox(width:25,),
                        Expanded(child: Text('Mehr sehen',style: TextStyle(color: Colors.white70,fontSize: 15),)),
                        IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                            padding:EdgeInsets.zero ,onPressed: null)
                      ],
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}