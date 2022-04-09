import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://www.healthline.com/health/types-of-addiction#behavioral';
const String murl = 'https://www.nychealthandhospitals.org/healthtips/7-tips-to-avoid-stress/';
const String nurl = 'https://www.mayoclinic.org/diseases-conditions/suicide/in-depth/suicide/art-20048230';
const String ourl = 'https://www.healthline.com/health/anxiety';
const String purl = 'https://www.mapsofindia.com/my-india/india/tips-on-how-to-control-mood-swings';


class aos extends StatefulWidget {
  @override
  State<aos> createState() => _aosState();
}

class _aosState extends State<aos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOLUTION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schuyler'),
          ),
        ),
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
      ), Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          'Today, most experts recognize two types of addiction:\nChemical addiction. This refers to addiction that involves the use of substances.\nBehavioral addiction. This refers to addiction that involves compulsive behaviors. These are persistent, repeated behaviors that you carry out even if they don’t offer any real benefit.\n Addiction interferes with normal brain function, particularly in the reward system. When you do something you find enjoyable, whether that’s hanging out with your best friend, drinking a bottle of wine, or using cocaine, this reward system releases the neurotransmitter dopamine along with other chemicals.\nContrary to popular belief, dopamine doesn’t appear to actually cause feelings of pleasure or euphoria. Instead, it seems to reinforce your brain’s association between certain things and feelings of pleasure, driving you to seek those things out again in the future',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontFamily: 'Schuyler'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 810,left: 150),
        child: ElevatedButton(onPressed: _launchURL, child:Text('Further Details')),
      )
        ]
    ),);
  }
}
void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class stress extends StatefulWidget {
  const stress({ Key? key }) : super(key: key);

  @override
  State<stress> createState() => _stressState();
}

class _stressState extends State<stress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOLUTION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schuyler'),
          ),
        ),
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
      ), Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
"Take care of yourself.\nAvoid drugs and alcohol as they can add to stress. Eat a well-balanced diet, get enough sleep, and exercise on a regular basis.\nEngage in self-relaxation.\nTry muscle relaxation, breathing or meditation exercises, prayer, yoga, or swimming to reduce stress. Spend time with nature or listen to quiet music\nTake breaks when needed.\nEspecially at work, taking breaks can help you re-organize and re-energize your thoughts and focus. This will help you do your work and maintain productivity.\nSeek out social support.\nA partner, family member, friend, counselor, doctor, or clergyperson can help lighten your mental load.\nConnect with others socially.\nSpending time with loved ones and doing fun things can help ease the stress.\nMaintain a normal routine.\nGet up in the morning and go to bed at night each day at the same time. Eat three meals daily. ",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontFamily: 'Schuyler'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 810,left: 150),
        child: ElevatedButton(onPressed: _launchURL1, child:Text('Further Details')),
      )
        ]
    ),);
  }
}
void _launchURL1() async {
  if (!await launch(murl)) throw 'Could not launch $_url';
}

class st extends StatefulWidget {
  const st({ Key? key }) : super(key: key);

  @override
  State<st> createState() => _stState();
}

class _stState extends State<st> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOLUTION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schuyler'),
          ),
        ),
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
      ), Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
"Recognize that these feelings are temporary and that with appropriate treatment you can learn how to help yourself feel better about life again. Asking others for support can help you see that you have other options and give you hope about the future.\nCreate a list of the reasons you have to live. This list can include being alive for your pet, your children, a favorite niece, or something that you enjoy doing at work or at home. It doesn't matter what the list includes, but finding a sense of purpose in your life can make a difference.\nBy getting proper treatment and using effective coping strategies, you can learn to manage or eliminate suicidal thoughts and develop a more satisfying life.",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontFamily: 'Schuyler'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 810,left: 150),
        child: ElevatedButton(onPressed: _launchURL2, child:Text('Further Details')),
      )
        ]
    ),);
  }
}
void _launchURL2() async {
  if (!await launch(nurl)) throw 'Could not launch $_url';
}

class anx extends StatefulWidget {
  const anx({ Key? key }) : super(key: key);

  @override
  State<anx> createState() => _anxState();
}

class _anxState extends State<anx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOLUTION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schuyler'),
          ),
        ),
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
      ), Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
"Maintain a positive attitude. Make an effort to replace negative thoughts with positive ones.\nGet involved. Volunteer or find another way to be active in your community, which creates a support network and gives you a break from everyday stress.\nLearn what triggers your anxiety. Is it work, family, school, or something else you can identify? Write in a journal when you’re feeling stressed or anxious, and look for a pattern.\nTalk to someone. Tell friends and family you’re feeling overwhelmed, and let them know how they can help you. Talk to a physician or therapist for professional help.",          style: TextStyle(
              color: Colors.black, fontSize: 28, fontFamily: 'Schuyler'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 810,left: 150),
        child: ElevatedButton(onPressed: _launchURL3, child:Text('Further Details')),
      )
        ]
    ),);
  }
}
void _launchURL3() async {
  if (!await launch(ourl)) throw 'Could not launch $_url';
}

class ms extends StatefulWidget {
  const ms({ Key? key }) : super(key: key);

  @override
  State<ms> createState() => _msState();
}

class _msState extends State<ms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SOLUTION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schuyler'),
          ),
        ),
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
      ), Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
"A mood swing is a sudden or intense change in emotional state. During a mood swing, a person may quickly switch from feeling happy and upbeat to feeling sad, irritable, or angry\nHere are some genuine tips which will help you to control your mood swings –\nTake time out for yourself\nAvoid caffeine and other drug\nEat right foods and eat frequently\nControl stress\nIndulge in self-care\nImprovise sleeping habits\nTalk about the problems",
         style: TextStyle(
              color: Colors.black, fontSize: 28, fontFamily: 'Schuyler'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 810,left: 150),
        child: ElevatedButton(onPressed: _launchURL4, child:Text('Further Details')),
      )
        ]
    ),);
  }
}

void _launchURL4() async {
  if (!await launch(purl)) throw 'Could not launch $_url';
}
