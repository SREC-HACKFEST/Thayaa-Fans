import 'package:flutter/material.dart';
import 'package:ui/fake_data.dart';
import 'package:ui/topic.dart';

class Recents extends StatefulWidget{



  @override
  State createState() => _RecentState();
}


class _RecentState extends State<Recents> {



  @override
  
  Widget build(BuildContext context) {
    return Expanded(
      
      child: ListView.builder(
          itemCount:recentList.length,
          physics: BouncingScrollPhysics(),
          
          itemBuilder: (context,index){
            return Card(
              margin: EdgeInsets.all(9.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 6,
                  color: Colors.black.withOpacity(0.3),
                  
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 17),
                    child:         
                    Column(
                      children: <Widget>[
                        ListTile(
                          
                          title: Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 30),
                            child: Text(
                              '${recentList[index].title}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40,
                                  fontFamily: 'Monotype Corsiva',
                                  letterSpacing: 0.2
                              ),
                            ),
                          ),
                          subtitle: Text(
                            '${recentList[index].subtitle}',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Monotype Corsiva',
                                fontSize: 25.5,
                                letterSpacing: 0.1
              
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => topics())
                            );},
                        ),
                       
                      ],
                    ),
                  )
            
            );
  
            
          }
      ),
    );
  }

}

