import 'package:final_project/login_screen.dart';
import 'package:final_project/onboardring_screen.dart';
import 'package:final_project/product_info.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'home_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    routes: {ProductInfo.id : (context) => ProductInfo()},
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:6),(){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>OnboardringScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:
       SingleChildScrollView(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // style: TextStyle(fontStyle:FontStyle.italic,fontSize: 25,color:Color(0xFF00BFA5),fontWeight: FontWeight.w800)),
              SizedBox(height: 220,),
            Center(
              child:AnimatedTextKit(
                animatedTexts: [
                TypewriterAnimatedText('Smartly Shopping',
                  textStyle:TextStyle(fontStyle:FontStyle.italic,fontSize: 25,color:Color(0xFF00BFA5),fontWeight: FontWeight.w800),
                  speed:Duration(milliseconds:200 ) ,
                ),
              ],),
            ),
              Center(child: Lottie.asset('animation/71390-shopping-cart-loader.json')),

          ],),
       ),

    );
  }
}
