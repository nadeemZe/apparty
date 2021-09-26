import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalenderPage extends StatefulWidget{
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage>
    with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xFF314556),
     extendBodyBehindAppBar: true,
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       title: Text('Nachste Events',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
       padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/9,
                                  right:15,
                                   left:20),
       color: Colors.transparent,
       child: Column(
         children: [
         TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 20),
          isScrollable: true,
          labelPadding: EdgeInsets.only(right: 45.0),
          unselectedLabelColor: Color(0xFFCDCDCD),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          tabs: [
           Tab(
             child: Text('Diese Woche',),
           ),
           Tab(
             child: Text('Diesen Monat',),
           ),
           Tab(
             child: Text('Dieses',),
           ),
         ],
       ),
        Container(
          height: MediaQuery.of(context).size.height/1.4,
          child: TabBarView(
                  controller: _tabController,
                  children: [
                    DayPage(),
                    DayPage(),
                    DayPage(),
               ]),
        ),
      ],
      ),
    )
   );
  }
}

class DayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount:3,
      itemBuilder:(context,index) {
        return Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 30,
                child: Row(
                  children: [
                    Text('23', style: TextStyle(color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                    Text('April', style: TextStyle(color: Colors.white,
                        fontSize: 17,),),
                  ],
                ),
              ),
              //SizedBox(height: 15,),
              Container(
                height: 133,
                decoration: BoxDecoration(
                  border: Border(bottom:BorderSide(color: Colors.grey)),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                            height: 37,
                            width:MediaQuery.of(context).size.width/1.7,
                            child: ListTile(
                              isThreeLine: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text('20:00 Uhr Techno Party', style: TextStyle(
                                  color: Colors.white, fontSize: 14),),
                              subtitle: Row(
                                children:[
                                  SizedBox(width:MediaQuery.of(context).size.width/15),
                                  Text('Posthalle', style: TextStyle(
                                    color: Colors.white70, fontSize: 12),),
                              ]
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.arrow_forward_ios,color: Colors.white70,size: 12,),
                                onPressed: null,),
                              ),
                            );
                  },
                ),
              ),
            ]
        );
      }
    );
  }
}