import 'package:flutter/material.dart';
import 'package:ui/fake_data.dart';
import 'package:ui/gmap.dart';
import 'package:ui/problem.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class topics extends StatefulWidget {
  @override
  State<topics> createState() => _topicsState();
}

LatLng _center = const LatLng(11.101711, 76.964770);
final number = '1800-599-0019';

class _topicsState extends State<topics> {
  Future<void> _getUserLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _center = LatLng(position.latitude, position.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                fontFamily: 'Schuyler'),
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
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 47, 186, 255),
              Color.fromARGB(255, 186, 205, 105),
              Color.fromARGB(255, 135, 227, 173),
              Color.fromARGB(255, 186, 167, 167),
            ],
          )),
        ),

        // TopBar_home(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Card(
                margin: EdgeInsets.all(9.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 6,
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => problem()));
                  },
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                    child: Center(
                        child: Text('Search For The Solution',
                            style: TextStyle(
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
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Card(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                    child: Center(
                        child: Text('Chat With Professional ',
                            style: TextStyle(
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
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Card(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                    child: Center(
                        child: Text('Call Helpline',
                            style: TextStyle(
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
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Card(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => GMap(
                                longitude: _center.longitude,
                                latitude: _center.latitude)));
                  },
                  child: const SizedBox(
                    width: 400,
                    height: 100,
                    child: Center(
                        child: Text('Nearby Consultor',
                            style: TextStyle(
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
           
          ],
        ),
//             children: <Widget>[

//      Expanded(

//       child: ListView.builder(
//           itemCount:4,
//           physics: BouncingScrollPhysics(),

//           itemBuilder: (context,index){
//             return Cardr(
//               margin: EdgeInsets.all(9.0),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                   elevation: 6,
//                   color: Color.fromARGB(255, 247, 0, 0).withOpacity(0.3),

//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 17),
//                     child:
//                     Column(
//                       children: <Widget>[
//                         ListTile(

//                           title: Padding(
//                             padding: const EdgeInsets.only(top: 15,bottom: 30),
//                             child: Text(
//                               '${recentList[index].title}',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 40,
//                                   fontFamily: 'Monotype Corsiva',
//                                   letterSpacing: 0.2
//                               ),
//                             ),
//                           ),

//                           onTap: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => topics())
//                             );},
//                         ),

//                       ],
//                     ),
//                   )

//             );

//           }
//       ),
//     ),]
//           )]
//           ));
//   }

// }
      ]),
    );
  }
}
