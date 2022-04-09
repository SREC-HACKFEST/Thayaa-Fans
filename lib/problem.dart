import 'package:flutter/material.dart';
import 'package:ui/BLOG.dart';

class problem extends StatefulWidget {

  @override
  State<problem> createState() => _problemState();
}

class _problemState extends State<problem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.transparent.withOpacity(0.9),
                      size: 26,
                    ),
                  ),
                  title: Center(
                    child: Text(
                      'MENU',
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
                        color: Color.fromARGB(255, 15, 2, 13).withOpacity(0.9),
                        size: 24,
                      ),
                    )
                  ],
                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                  elevation: 25,
                ),
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
      ),
      
    
          // TopBar_home(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top : 20,left: 10),
                child: Card(
                  color:Colors.transparent,
                  child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => aos()));
          },
          child: const SizedBox(
            
            width: 400,
            height: 100,
            child: Center(child: Text('Addiction Of Something',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: 0.7,
                            fontFamily: 'Trajan Pro',
                            fontSize: 25,
                          ))),
          ),
        ),
      ),
              ),
      Padding(
        padding: const EdgeInsets.only(top:20,left: 10),
        child: Card(
                  color:Colors.transparent,
                  child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => st()));
            },
            child: const SizedBox(
              
              width: 400,
              height: 100,
             child: Center(child: Text('Suicidal Thoughts',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: 0.7,
                            fontFamily: 'Trajan Pro',
                            fontSize: 25,
                          ))),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:20,left: 10),
        child: Card(
                  color:Colors.transparent,
                  child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => stress()));
            },
            child: const SizedBox(
              
              width: 400,
              height: 100,
               child: Center(child: Text('Stress',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                              letterSpacing: 0.7,
                              fontFamily: 'Trajan Pro',
                              fontSize: 25,
                            ))),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:20,left: 10),
        child: Card(
                  color:Colors.transparent,
                  child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => anx()));
            },
            child: const SizedBox(
              
              width: 400,
              height: 100,
               child: Center(child: Text('Anxiety',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                              letterSpacing: 0.7,
                              fontFamily: 'Trajan Pro',
                              fontSize: 25,
                            ))),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:20,left: 10),
        child: Card(
                  color:Colors.transparent,
                  child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ms()));
            },
            child: const SizedBox(
              
              width: 400,
              height: 100,
               child: Center(child: Text('Mood Swing',style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                              letterSpacing: 0.7,
                              fontFamily: 'Trajan Pro',
                              fontSize: 25,
                            ))),
            ),
          ),
        ),
      ),
     
            ],),

        ]),
    );}
}