import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'search.dart';

class Updates extends StatefulWidget{

  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
bool x=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Ankundigunge',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(
                  icon:FaIcon(FontAwesomeIcons.slidersH,color: Colors.white,size: 20,),
                  onPressed:(){
                    setState(() {
                      x=true;
                    });
                  },
        ),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,size: 25,),
              onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
              }
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/10,),
        color: Colors.transparent,
        child:ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            itemBuilder: (context,index){
              return Container(
                        height: MediaQuery.of(context).size.height/4.9,
                        color: Colors.black54,
                        margin: EdgeInsets.only(top: 12),
                        padding: EdgeInsets.only(left: 20,right: 26,top: 7,bottom: 7),
                        child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                      children: [
                                       CircleAvatar(
                                          backgroundImage: AssetImage('assets/party.jpg'),
                                          radius: 21,
                                     ),
                                      Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                            Text('Kiliani Vilsfest 2021',
                                                  style: TextStyle(
                                                      color: Colors.white,fontSize: 20),),
                                            Text('Stadt Wurzburg',
                                                  style: TextStyle(
                                                      color: Colors.white70,fontSize: 12),),
                                      ],
                                      ),
                                      SizedBox(width:70,),
                                      Expanded(
                                        child: IconButton(
                                          icon: FaIcon(FontAwesomeIcons.ellipsisV,color: Colors.white,size:20,),
                                          onPressed: null),
                                      )
                                      ],
                        ),
                            SizedBox(height: 15,),
                            Text('Leider mussen wir euch mitteilen, dass das Kiliani-Volks 2021',
                              style: TextStyle(color: Colors.white,fontSize:11 ),),
                            Text('abgesagt wurde',style: TextStyle(color: Colors.white,fontSize: 11),),
                            SizedBox(height:23,),
                            Align(
                            alignment: Alignment.centerRight,
                               child: Padding(
                                 padding: const EdgeInsets.only(right: 15),
                                 child: Text('Vor 2 Stunden',style: TextStyle(color: Colors.white70,fontSize: 13),),
                               ),
                           ),
                 ],
              ),
        );
      }
      ),
      ),
      bottomSheet: x?ShowBottomSheet():null,
      floatingActionButton:x?FloatingActionButton(
        onPressed: (){
          setState(() {
            x=false;
          });
        },
        child: Icon(Icons.keyboard_arrow_down_sharp,size: 35,),
        backgroundColor: Color(0xFF314556),
      ):null,
    );
  }
}
enum Choose {Ab18,Ab16  }

class ShowBottomSheet extends StatefulWidget{
  @override
  _ShowBottomSheetState createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  Choose age=Choose.Ab16;
  double svalue=0;
  bool b1=false;bool b2=false;bool b3=false;bool b4=false;bool b5=false;bool b6=false;
  bool c1=false;bool c2=false;bool c3=false;bool c4=false;bool c5=false;bool c6=false;bool c7=false;bool c8=false;
  bool d1=false;bool d2=false;
  bool e1=false;bool e2=false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height/1.3,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.black,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              child: Row(
                children: [
                  Text('Filter',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(width: 200,),
                  Expanded(
                    child: Row(
                      children: [
                        Text('Stadt',style: TextStyle(color: Colors.white,fontSize: 15),),
                        IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,), onPressed: null),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text('Entfemungslimit',style: TextStyle(color: Colors.white,fontSize: 15),),
            Slider(
              min: 0,
              max: 100,
              divisions: 10,
              inactiveColor: Colors.grey,
              activeColor:Colors.blue ,
              value: svalue,
              label: '$svalue km',
              onChanged:  (double newValue) {
                setState(() {
                  svalue = newValue;
                });
              },
            ),
            Text('Geschaftsart',style: TextStyle(color: Colors.white,fontSize: 17),),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        b1 =true;
                        b2=false;
                        b3=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 90,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:b1? Border.all(color: Colors.blue):Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text('Clubs',style: TextStyle(color:b1?Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        b2 =true;
                        b1=false;
                        b3=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 90,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:Border.all(color:b2? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Bars',style: TextStyle(color:b2? Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        b3 =true;
                        b2=false;
                        b1=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:b3? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Von mir geliked',style: TextStyle(color:b3? Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        b4 =true;
                        b5=false;
                        b6=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:b4? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Weinfeste',style: TextStyle(color:b4? Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        b5 =true;
                        b4=false;
                        b6=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:b5? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Konzerts',style: TextStyle(color:b5? Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        b6 =true;
                        b4=false;
                        b5=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:b6? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Festivals',style: TextStyle(color:b6? Colors.blue:Colors.grey,fontSize: 17),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Musikrichtung',style: TextStyle(color: Colors.white,fontSize: 17),),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        c1 =true;
                        c2=false;
                        c3=false;
                        c4=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c1? Colors.blue:Colors.grey),
                      ),
                      child: Center(child: Text('Hip-Hop',style: TextStyle(color:c1?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c2 =true;
                        c1=false;
                        c3=false;
                        c4=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c2?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Elektronik',style: TextStyle(color:c2?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c3=true;
                        c2=false;
                        c1=false;
                        c4=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c3?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Techno',style: TextStyle(color:c3?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c4 =true;
                        c2=false;
                        c3=false;
                        c1=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c4?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Pop',style: TextStyle(color:c4?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        c5 =true;
                        c6=false;
                        c7=false;
                        c8=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c5?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Mix',style: TextStyle(color:c5?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c6 =true;
                        c5=false;
                        c7=false;
                        c8=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c6?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Hip-Hop',style: TextStyle(color:c6?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c7 =true;
                        c6=false;
                        c5=false;
                        c8=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c7?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('80er',style: TextStyle(color:c7?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        c8 =true;
                        c6=false;
                        c7=false;
                        c5=false;
                      });
                      },
                    child: Container(
                      height: 40,
                      width: 82,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:c8?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('90er',style: TextStyle(color:c8?Colors.blue: Colors.grey,fontSize: 17),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Eintritt',style: TextStyle(color: Colors.white,fontSize: 17),),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        d1 =true;
                        d2=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 110,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:d1?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Kostenlose',style: TextStyle(color:d1?Colors.blue:Colors.grey,fontSize: 13),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        d2=true;
                        d1=false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:d2?Colors.blue: Colors.grey),
                      ),
                      child: Center(child: Text('Kostenpflichtige Eintritt',style: TextStyle(color:d2?Colors.blue: Colors.grey,fontSize: 13),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Alter',style: TextStyle(color: Colors.white,fontSize: 17),),
            Container(
              height: 20,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Ab 18 Jahre',style: TextStyle(color:e1?Colors.blue: Colors.grey,fontSize: 15)),
                leading: Radio(
                  activeColor: Colors.blue,
                  value: Choose.Ab18,
                  groupValue: age,
                  onChanged: (Choose value) {
                    setState(() {
                      e1=true;
                      e2=false;
                      age = value;
                    });
                  },
                ),
              ),
            ),
            Container(
              height: 20,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title:  Text('Ab 16 Jahre',style: TextStyle(color:e2?Colors.blue: Colors.grey,fontSize: 15),),
                leading: Radio(
                  activeColor: Colors.blue,
                  value: Choose.Ab16,
                  groupValue: age,
                  onChanged: (Choose value) {
                    setState(() {
                      e2=true;
                      e1=false;
                      age = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}