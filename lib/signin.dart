import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup.dart';
import 'dashboard.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class  SignIn extends StatefulWidget{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();

  bool passwordvisible=true;

 /* logged() async{
    await Firebase.initializeApp();
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailcontroller.text, password:_passwordcontroller.text)
          .then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard())));}
    catch (error){print(error.message);}
  }*/

  void dispose(){
  _emailcontroller.dispose();
  _passwordcontroller.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314556),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/5,
                                   left:MediaQuery.of(context).size.width/7 ,
                                   right: MediaQuery.of(context).size.width/7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Apparty',style: TextStyle(color: Colors.white,fontSize: 43),),
              Row(
                  children:[
                    SizedBox(width:MediaQuery.of(context).size.width/5.7,),
                    Text('lets have fun',style: TextStyle(color: Colors.white,fontSize:13),)
                  ]
              ),
              SizedBox(height: 15,),
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
                    hintText: 'Email oder Benutzername',
                    hintStyle: TextStyle(fontSize:10,color: Colors.white70)
                ),
                validator: (val){
                  if(val==null)return'Enter Email';
                  else return'';
                },
              ),
              SizedBox(height: 17,),
              TextFormField(
                controller: _passwordcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                style:TextStyle(color: Colors.white),
                obscureText:!passwordvisible,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70)
                  ),
                    contentPadding: EdgeInsets.only(bottom:4),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize:10,color: Colors.white70),
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
              SizedBox(height: 7,),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Password vergessen?',style: TextStyle(color: Colors.white,fontSize: 10),),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Anmelden',style: TextStyle(color: Colors.white,fontSize:17),),
                  SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                     shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward,color: Colors.black,),
                      onPressed:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>DashBoard()));},
                    ),
                  )
                ],
              ),
              SizedBox(height: 35,),
              Text('Oder',style: TextStyle(color: Colors.white,fontSize: 12),),
              SizedBox(height: 20,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
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
                        shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('haben Sie noch kein Konto?',style: TextStyle(color: Colors.white,fontSize:10),),
                  SizedBox(width: 40,),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: Text('Registrieren?',style:TextStyle(color: Colors.white,fontSize: 10,decoration:TextDecoration.underline),))
                ]
              )
            ],
          ),
        ),
      ),

    );
  }
}