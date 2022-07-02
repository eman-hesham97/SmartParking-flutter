// ignore_for_file: unnecessary_new, prefer_const_constructors
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
      body: Stack( 
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150.0, left: 140),
                    child: RichText(
                    text: TextSpan(
                    text: 'About Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize:25, 
                      color: Colors.white,
                    )
                  )
                  ),
                  ),
                  
                ],
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 130),
                  child:RichText(text: TextSpan(text: '------------------------------- \n \n')) ,
                )
                
              ],),
              // -------------------------------------------------------------------------------------
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 80),
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () async {
                        const url = 'https://www.linkedin.com/in/eman-hesham-141673175/';
                        await launch(url);
                      }
                      )
                  ),
                Container(
                  child: RichText(text: 
                    TextSpan(
                      text: 'Eman Hesham', style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20, 
                      fontStyle: FontStyle.italic,
                      color: Colors.white, 
                      ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                          String url = "https://www.linkedin.com/in/eman-hesham-141673175/";
                          await launch(url);
                      }
                    ),
                    ),
                ),
                Container(
                    child: IconButton(
                      icon: Icon(Icons.link_rounded,),
                      onPressed: () async {
                        const url = 'https://github.com/eman-hesham97';
                        await launch(url);
                      }
                      )
                  ),
              ],
              ),
              // -------------------------------------------------------------------------------------
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 80),
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () async {
                        const url = "https://www.linkedin.com/in/shorook-abdelbaqi/";
                        await launch(url);
                      }
                      )
                  ),
                Container(
                  child: RichText(text: 
                    TextSpan(
                      text: 'Shorook Nabil', style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20, 
                      fontStyle: FontStyle.italic,
                      color: Colors.white, 
                      ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                          String url = "https://www.linkedin.com/in/shorook-abdelbaqi/";
                          await launch(url);
                      }
                    ),
                    ),
                ),
                Container(
                    child: IconButton(
                      icon: Icon(Icons.link_rounded,),
                      onPressed: () async {
                        const url = 'https://github.com/shorook96';
                        await launch(url);
                      }
                      )
                  )
              ],
              ),
              // -------------------------------------------------------------------------------------
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 80),
                    child: IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () async {
                        const url = "https://www.linkedin.com/in/rofida-reda/";
                        await launch(url);
                      }
                      )
                  ),
                Container(
                  child: RichText(text: 
                    TextSpan(
                      text: 'Rofida Reda', style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20, 
                      fontStyle: FontStyle.italic,
                      color: Colors.white, 
                      ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                          String url = "https://www.linkedin.com/in/rofida-reda/";
                          await launch(url);
                      }
                    ),
                    ),
                ),
                Container(
                    child: IconButton(
                      icon: Icon(Icons.link_rounded,),
                      onPressed: () async {
                        const url = 'https://github.com/RofidaReda1067';
                        await launch(url);
                      }
                      )
                  )
              ],
              ),
              // -------------------------------------------------------------------------------------
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 140, top: 150),
                  child: RichText(text: 
                TextSpan(
                  text: ' ©2022, ITI\n', style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  ),
                )
                ),
                ),
              ],
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: RichText(text: 
                TextSpan(text: 'IOT Application Development Track\n', style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  ),
                ),
                ),
                ),
              ],
              ),
            ],
          )
        ], 
          ),
      );  
  }
}