import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchcontroller = TextEditingController();

  void dispose() {
    _searchcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 55,
            left: 25,
            right: 25,
          ),
          child: Column(children: [
            Center(
              child: Text(
                'Search',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 25,),
            TextField(
              controller: _searchcontroller,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black54,
                  hintStyle: TextStyle(color: Colors.white70, fontSize: 15),
                  hintText: 'Nach coole Events suchen',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white70,
                    size: 25,
                  ),
                  //  suffix:
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ])),
    );
  }
}
