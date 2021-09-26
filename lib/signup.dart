import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class  SignUp extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();
  TextEditingController _namecontroller=TextEditingController();
  TextEditingController _pasconformcontroller=TextEditingController();

  bool passwordvisible=false;

  void dispose(){
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
    _pasconformcontroller.dispose();
    super.dispose();
  }

  _register()async{
    await Firebase.initializeApp();
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailcontroller.text, password: _passwordcontroller.text);
    var uid = FirebaseAuth.instance.currentUser.uid;

    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'name': _namecontroller.text,
      'password':_passwordcontroller.text,
      'email':_emailcontroller.text,
    }).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/6,
                                   left:MediaQuery.of(context).size.width/7 ,
                                   right: MediaQuery.of(context).size.width/7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Apparty',style: TextStyle(color: Colors.white,fontSize: 43),),
              Row(
                  children:[
                    SizedBox(width:MediaQuery.of(context).size.width/6,),
                    Text('lets have fun',style: TextStyle(color: Colors.white,fontSize:13),)
                ]
               ),
              SizedBox(height: 15,),
              TextFormField(
                controller: _namecontroller,
                textAlignVertical: TextAlignVertical.bottom,
                style:TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)
                    ),
                    contentPadding: EdgeInsets.only(bottom:12),
                    hintText: 'Name',
                    hintStyle: TextStyle(fontSize:9,color: Colors.white70)
                ),
                validator: (val){
                  if(val==null)return'Enter Name';
                  else return'';
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _emailcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                style:TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)
                    ),
                    contentPadding: EdgeInsets.only(bottom:12),
                    hintText: 'Email ',
                    hintStyle: TextStyle(fontSize:9,color: Colors.white70)
                ),
                validator: (val){
                  if(val==null)return'Enter Email';
                  else return'';
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _passwordcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                style:TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)
                    ),
                    contentPadding: EdgeInsets.only(bottom:12),
                    hintText: 'password',
                    hintStyle: TextStyle(fontSize:9,color: Colors.white70)
                ),
                validator: (val){
                  if(val==null)return'Enter valid Password';
                  else if(val.length <7)return'Must be more than 7 char';
                  else return '';
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _pasconformcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                style:TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                obscureText:!passwordvisible,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)
                    ),
                    contentPadding: EdgeInsets.only(bottom:4),
                    hintText: 'Passwort bestatigen',
                    hintStyle: TextStyle(fontSize:9,color: Colors.white70),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.bottomRight,
                      icon:Icon(passwordvisible?Icons.visibility_off:Icons.visibility,
                        color: Colors.white70,size: 15,),
                      onPressed:(){
                        setState(() {
                          passwordvisible=!passwordvisible;
                        });
                      },
                    )
                ),
                validator: (val){
                  if(val==null)return'Enter valid Password';
                  else if(val.length <7)return'Must be more than 7 char';
                  else return '';
                },
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Registrieren',style: TextStyle(color: Colors.white,fontSize:17),),
                  SizedBox(width: 40,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward,color: Colors.black,),
                      onPressed:_register
                    ),
                  )
                ],
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(width: 35,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon:FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(width: 35,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.apple,color: Colors.grey,),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
              SizedBox( height: 51,),
              Text('Allgemeine Geschaftsbedingungen',style:TextStyle(color: Colors.white,fontSize: 10,),)
            ],
          ),
        ),
      ),
    );
  }
}