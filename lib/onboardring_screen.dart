import 'package:final_project/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'home_screen.dart';
//Color(0xFF5C6BC0),
class OnboardringScreen extends StatelessWidget {
   OnboardringScreen({Key? key}) : super(key: key);

   List<PageViewModel>pages =[
     PageViewModel(
       useScrollView:true,
       title: 'Online Shopping',
       body: "Shopping become easier, You only have to search for product you want , add product to your cart , finally payment ,All of this from your home ",
       image:Center(child:Lottie.asset('animation/JftntkJU0G.json',width: 500,),),
       decoration: PageDecoration(
         titleTextStyle: TextStyle(
           fontSize: 30,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic,
           color:Color(0xFF5C6BC0),
         ),
         bodyTextStyle: TextStyle(fontSize:18,fontWeight:FontWeight.w400),

       ),
     ),
     PageViewModel(
       useScrollView:true,
       title: 'Payment',
       body: "Easy and Secure payment from home ",
       image:Center(child:Lottie.asset('animation/32894-credit-card-payment.json',),),
       decoration: PageDecoration(
         titleTextStyle: TextStyle(
           fontSize: 30,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic,color:Color(0xFF00BFA5),
         ),
           bodyTextStyle: TextStyle(fontSize:18,fontWeight:FontWeight.w400),
       ),
     ),
     PageViewModel(
       useScrollView:true,
       title: 'Products Delivery',
       body: "Product will delivered to the door of your house in the specified time ",
       image:Center(child:Lottie.asset('animation/89626-order-delivery.json',height: 500),),
       decoration: PageDecoration(
         titleTextStyle: TextStyle(
           fontSize: 30,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic,color: Color(0xFF00BFA5),
         ),
           bodyTextStyle: TextStyle(fontSize:18,fontWeight:FontWeight.w400),
       ),
     ),
   ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
       // appBar: AppBar(backgroundColor: Colors.white,title: Center(child: Text('Smartly Shopping ',style: TextStyle(color: Color(0xFF00BFA5),fontSize: 25,fontWeight: FontWeight.w700),)),),
       body:
        IntroductionScreen(
           pages:pages,
           dotsDecorator: DotsDecorator(
             size:Size (10,10),
             color: Color(0xFF5C6BC0),
             activeSize:Size.square(15),
             activeColor: Colors.teal,
           ),
           showDoneButton: true,
           done:Text('Done',style: TextStyle(fontSize: 20,color: Colors.teal),) ,
           showSkipButton: true,
           skip:Text('Skip',style: TextStyle(fontSize: 20,color: Colors.teal),) ,
           next: Icon(Icons.arrow_forward,size: 20,color: Colors.teal),
           onDone: (){
             OnDone(context);
           },
           curve: Curves.decelerate,
         ),

      ),
    );
  }
  void OnDone(context){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
