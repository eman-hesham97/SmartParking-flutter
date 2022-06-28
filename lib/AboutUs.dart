// ignore_for_file: unnecessary_new
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(  
          child:RichText(  
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'About Us \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: '------------------------------- \n \n'),
                TextSpan(
                  text: 'Eman Hesham \n \n', style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20, 
                  fontStyle: FontStyle.italic,
                  color: Colors.white, 
                  ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                      String url = "https://www.linkedin.com/in/eman-hesham-141673175/";
                      var urllaunchable = await canLaunch(url); 
                      if(urllaunchable){
                          await launch(url);
                      }else{
                        print("URL can't be launched.");
                      }
                  }),
                TextSpan(text: 'Shorook Nabil \n \n', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,fontStyle: 
                  FontStyle.italic,
                  color: Colors.white,
                  ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                      String url = "https://www.linkedin.com/in/shorook-abdelbaqi/";
                      var urllaunchable = await canLaunch(url);  
                      if(urllaunchable){
                          await launch(url); 
                      }else{
                        print("URL can't be launched.");
                      }
                  }
                ),
                TextSpan(text: 'Rofida Reda \n', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  ),
                recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                        String url = "https://www.linkedin.com/in/rofida-reda/";
                        var urllaunchable = await canLaunch(url); 
                        if(urllaunchable){
                            await launch(url); 
                        }else{
                          print("URL can't be launched.");
                        }
                    }
                ),
              ],
            ),
            // "About Us",  
            // overflow: TextOverflow.clip,
            // style: TextStyle(  
            //   fontSize: 35,  
            //   color: Colors.white,  
            //   fontWeight: FontWeight.w700,  
            //   fontStyle: FontStyle.italic,  
            //   letterSpacing: 8,  
            //   wordSpacing: 20,  
              // backgroundColor: Colors.yellow,  
              // shadows: [  
              //   Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)  
              // ]  
              
            ),  
            
          ),
      );  
    // );
  }
}