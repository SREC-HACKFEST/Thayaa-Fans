import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

//code for designing the UI of our text field where the user writes his email id or password

const kTextFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 1, 18, 26), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
 late String email;
  late String password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:
          Container(
           decoration: BoxDecoration(
             
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 47, 186, 255),
               
                Color.fromARGB(255, 186, 205, 105),
                 Color.fromARGB(255, 135, 227, 173),
                Color.fromARGB(255, 186, 167, 167),
                
              ],
            
            ),
            
          ),
          child: Column(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Center(
             child: Padding(
                    padding: const EdgeInsets.only(top: 0, left: 130,bottom: 0,right: 130),
                    child: Image.asset("images/hackfest1.png"),
                  ),
           ),
                
        Container(
          height: 458,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 183, 213),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          
          
     child:
      Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Your Login Crenditals',style: TextStyle(fontSize: 45, fontFamily:'Trajan Pro', color: Colors.white)),
              SizedBox(height: 40),
              
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email',
                  )),
              SizedBox(
                height: 17,
              ),
              TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                    //Do something with the user input.
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password.')),
              SizedBox(
                height: 50,
              ),
          ElevatedButton(
                  child: Text("Login",),
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Navigator.pushNamed(context, 'home_screen');
                      }
                    } catch (e) {
                      print(e);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  }),
            ],
          ),
     ),
        ),
        
          ]),
          ),
    );


  }
}