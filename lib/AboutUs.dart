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
          // child:RichText(  
          //   overflow: TextOverflow.clip,
          //   textAlign: TextAlign.center,
          //   text: TextSpan(
          //     text: 'About Us \n',
          //     // ignore: prefer_const_constructors
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          //     children:[
          //       TextSpan(text: '------------------------------- \n \n'),
          //       TextSpan(
          //         text: 'Eman Hesham \n \n', style: TextStyle(
          //         fontWeight: FontWeight.bold, 
          //         fontSize: 20, 
          //         fontStyle: FontStyle.italic,
          //         color: Colors.white, 
          //         ),
          //       recognizer: TapGestureRecognizer()
          //         ..onTap = () async {
          //             String url = "https://www.linkedin.com/in/eman-hesham-141673175/";
          //             await launch(url);
          //         }),
          //       // TextSpan(
          //       //   children:
          //       //  IconButton(
          //       //     icon: Icon(Icons.ac_unit,),
          //       //     onPressed: () async {
          //       //       const url = 'https://github.com/himanshusharma89';
          //       //       await launch(url);
          //       //     }
          //       //     ),
          //       // ),
          //       TextSpan(text: 'Shorook Nabil \n \n', style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20,fontStyle: 
          //         FontStyle.italic,
          //         color: Colors.white,
          //         ),
          //       recognizer: TapGestureRecognizer()
          //         ..onTap = () async {
          //             String url = "https://www.linkedin.com/in/shorook-abdelbaqi/";
          //             await launch(url);
          //         }
          //       ),
          //       TextSpan(text: 'Rofida Reda \n', style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20,
          //         fontStyle: FontStyle.italic,
          //         color: Colors.white,
          //         ),
          //       recognizer: TapGestureRecognizer()
          //           ..onTap = () async {
          //               String url = "https://www.linkedin.com/in/rofida-reda/";
          //               await launch(url);
          //           }
                    
          //       ),
          //       TextSpan(text: '\n\n\n\n\n\n\n\n\n ©2022, ITI\n', style: TextStyle(
          //         fontSize: 18,
          //         color: Colors.black54,
          //         ),
          //       ),
          //       TextSpan(text: 'IOT Application Development Track\n', style: TextStyle(
          //         fontSize: 18,
          //         color: Colors.black54,
          //         ),
          //       ),
          //     ],
          //   ),   
          //   ),  
          ),
      );  
  }
}