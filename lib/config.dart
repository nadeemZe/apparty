import 'package:flutter/material.dart';

class PerConfig extends StatefulWidget{
  @override
  _PerConfigState createState() => _PerConfigState();
}

class _PerConfigState extends State<PerConfig> {
  bool val =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       title: Text('Einstellungen',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:30 ,left: 25,right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children:[
                    SizedBox(width: 20,),
                    Text('Personaliche Daten',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),)
               ]
              ),
              SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('Joe sanfield',style: TextStyle(color: Colors.white70,fontSize: 13),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('Handynummer',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('+49150345553345',style: TextStyle(color: Colors.white70,fontSize: 13),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Text('joe@gmail.com',style: TextStyle(color: Colors.white70,fontSize: 13),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Connectedaccounts',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              SizedBox(height:MediaQuery.of(context).size.height/25 ,),
              Row(
                children:[
                  SizedBox(width: 20,),
                  Text('App',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),)
                ]
              ),
              SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Benachrichtigungen',style: TextStyle(color: Colors.white,fontSize: 17),),
                  Switch(value:val , onChanged: (value){
                    setState(() {
                      val=value;
                    });
                  })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sprache',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              SizedBox(height: 25 ,),
              Row(
                  children:[
                   SizedBox(width: 20,),
                   Text('Andere',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),)
              ]
              ),
              SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Privatsphare',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sicherheit',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hilfe',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Datenrichtlinie',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Impressum/AGB/NetzDG',style: TextStyle(color: Colors.white,fontSize: 17),),
                  IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,), onPressed: null)
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}