import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ui/recents.dart';

var loggedinUser;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    getCurrentUser();
  }

  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
         loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  late double deviceWidth;
   late double deviceHeight;
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[Container(
           decoration:BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topRight,
              end:Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 47, 186, 255),
               
                Color.fromARGB(255, 186, 205, 105),
                 Color.fromARGB(255, 135, 227, 173),
                Color.fromARGB(255, 186, 167, 167),
                
              ],
            )
          ),
        height:deviceHeight,
      ),
      
    
          // TopBar_home(),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: AppBar(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white.withOpacity(0.9),
                      size: 26,
                    ),
                  ),
                  title: Center(
                    child: Text(
                      'Thayaa Fans',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schuyler'
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.settings,
                        color: Color.fromARGB(255, 27, 3, 25).withOpacity(0.9),
                        size: 24,
                      ),
                    )
                  ],
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 40,right: 8,bottom: 10),
                child: Card(
                  elevation: 18,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide.none,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ListTile(
                      title: TextField(
                        enabled: false,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Select Your Language',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                            letterSpacing: 0.7,
                            fontFamily: 'Trajan Pro',
                            fontSize: 25,
                          )
                        ),
                      ),
                      
                    ),
                  ),
                ),
              ),
              Recents(),
            ],
          )
        ],
      ),
    );
  }
}
