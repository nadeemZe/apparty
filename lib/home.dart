import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool x=false;
  GoogleMapController _controller ;
   CameraPosition _location = CameraPosition(
    target: LatLng( 49.79351, 9.93254),
  );
  onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    _controller.setMapStyle(value);
  }

  Set<Marker> createMarker(){
    return {
    Marker(markerId: MarkerId("1"),
      onTap: (){
        setState(() {
          x=true;
        });
      },
    position: LatLng(49.79351, 9.93254),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ),

    Marker(markerId: MarkerId("2"),
        onTap: (){
         setState(() {
           x=true;
      });
        },
        position: LatLng(49.79390, 9.93920),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ),

    Marker(markerId: MarkerId("3"),
         onTap: (){
          setState(() {
            x=true;
          });
        },
        position: LatLng(49.79319, 9.92609),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: "Party", onTap: () {},
        )),

    Marker(markerId: MarkerId("4"),
       onTap: (){
        setState(() {
          x=true;
        });
      },
        position: LatLng(49.78987, 9.92008),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
        ),
   };
  }

  TextEditingController _searchcontroller=TextEditingController();

  void dispose(){
  _searchcontroller.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      backgroundColor:  Color(0xFF314556),
      body:Stack(
        children:[
          GoogleMap(
          initialCameraPosition: _location,
          minMaxZoomPreference: MinMaxZoomPreference(13,19 ),
          mapType: MapType.normal,
          onMapCreated:onMapCreated,
           markers:createMarker(),
        ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/15,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Center(
                  child: Text('Apparty',style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 30,),
                TextField(
                  controller: _searchcontroller,
                  decoration: InputDecoration(
                      contentPadding:EdgeInsets.only(top:7,bottom: 7) ,
                      filled: true,
                      fillColor: Colors.black54,
                      hintStyle: TextStyle(color: Colors.white70,fontSize: 15),
                      hintText: 'Nach coole Events suchen',
                      prefixIcon: Icon(Icons.search,color: Colors.white70,size:25 ,),
                      suffixIcon: IconButton(
                               padding: EdgeInsets.only(bottom:13,right: 10),
                               alignment: Alignment.bottomRight,
                               onPressed: null,
                               icon: FaIcon(FontAwesomeIcons.slidersH,color: Colors.white70,size: 20)),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
                SizedBox(height:25,),
                Container(
                  width: MediaQuery.of(context).size.width/1.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Alles',style: TextStyle(color: Colors.white,fontSize: 15),),
                      Text('Konzerts',style: TextStyle(color: Colors.white,fontSize: 15),),
                      Text('Bars',style: TextStyle(color: Colors.white,fontSize: 15),),
                      Text('Clubs',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ]
      ),
      bottomSheet:x?GetBottomSheet():null,
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

class  GetBottomSheet extends StatefulWidget{
  @override
  _GetBottomSheetState createState() => _GetBottomSheetState();
}

class _GetBottomSheetState extends State<GetBottomSheet> {
  bool favorite=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15))
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 21, backgroundImage: AssetImage('assets/per.png'),),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Salsa Abend',
                style: TextStyle(color: Colors.white, fontSize: 20),),
              Text('La Bamba',
                style: TextStyle(color: Colors.white70, fontSize: 12),),
              Text('Theaterstrabe 4,78540 Wurzburg',
                style: TextStyle(color: Colors.white70, fontSize: 12),),
            ],
          ),
          SizedBox(width: 51,),
          favorite ? IconButton(icon: Icon(Icons.favorite, color: Colors.blue),
            onPressed: () {
              setState(() {
                favorite = !favorite;
              });
            },)
              : IconButton(icon: Icon(Icons.favorite_border,color: Colors.blue,),
            onPressed: () {
              setState(() {
                favorite = !favorite;
              });
            },)
        ],
      ),
    );
  }
}