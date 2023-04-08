import 'package:flutter/material.dart';
import 'brailletranslator.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            brightness: Brightness.dark,
            backgroundColor: Colors.grey[300],
            elevation: 0,
            title: Text(
              'Select an option',
              style: TextStyle(color: Colors.white),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                  color: Color.fromARGB(255, 105, 4, 88)
              ),
            ),
          ),
          body:Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Column(
                children :[
                 ElevatedButton(
  onPressed:() => Navigator.pushNamed(context,"/translator" ), 
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 105, 4, 88), 
    elevation: 3.0, 
    shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assests/blind_image.png',
         width: 24.0, 
        height: 24.0,),
      SizedBox(width: 8.0), 
      Text("Braille Translator"),
    ],
  ),
),
                  SizedBox(
                    height: 20.0,
                  ),
                 ElevatedButton(
  onPressed:() => Navigator.pushNamed(context,"/voice" ), 
  style: ElevatedButton.styleFrom(
    primary:Color.fromARGB(255, 105, 4, 88), 
    elevation: 3.0, 
    shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assests/deaf_image.png',
         width: 24.0, 
        height: 24.0,),
      SizedBox(width: 8.0), 
      Text("Voice Recognizer"),
    ],
  ),
),
                   SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
  onPressed:() => Navigator.pushNamed(context,"/dictionary" ), 
  style: ElevatedButton.styleFrom(
    primary:Color.fromARGB(255, 105, 4, 88), 
    elevation: 3.0, 
    shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Image.asset(
        'assests/deaf_image.png',
         width: 24.0, 
        height: 24.0,),
      SizedBox(width: 8.0), 
      Text("Sign-Language Dictonary"),
    ],
  ),
),
                ]
            ),
          ),
        ),
      ),
    );
  }
}

               