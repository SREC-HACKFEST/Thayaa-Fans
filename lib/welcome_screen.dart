import 'package:flutter/material.dart';
import 'package:ui/signup_screen.dart';
import 'login_screen.dart';


class WelcomeScreen extends StatefulWidget {
   late double deviceHeight;
   late double deviceWidth;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
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
          ),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20,),
                  child: Column(
                    children: [
                      Text('Self-care is how you take your power back!!!', style: TextStyle(fontSize: 45, fontFamily:'Trajan Pro', color: Colors.white),),
                      
                    ],
                  ),
                ),),
 
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 60,bottom: 40,right: 50),
                  child: Image.asset("images/hackfest1.png"),
                ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
Container(
   width: double.infinity,
  height: 70,       
 padding: const EdgeInsets.only(top: 10, left: 70, right: 70),
              child: RaisedButton(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.indigo.shade800,
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
              
                },
                child: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),
                ),
                ),
                SizedBox(height: 10, ),
                      
Container(
   width: double.infinity,
  height: 70,       
 padding: const EdgeInsets.only(top: 10, left: 70, right: 70),
              child: RaisedButton(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.indigo.shade800,
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistrationScreen()));
              
                },
                child: Text('Register', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),
                ),
                ),
                SizedBox(height: 20),
                  ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}