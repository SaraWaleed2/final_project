import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      SizedBox(height: 100,),
      Center(child: Text('Profile',style: TextStyle(fontSize:38,fontWeight:FontWeight.w600 ),)),
      SizedBox(height: 40,),
      CircleAvatar(radius: 80,backgroundImage:AssetImage('asset/online-shopping-1024x768.jpg'),backgroundColor:Colors.white38,),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: TextButton(
                style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFFD1C4E9),)) ,
                onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Center(child: Text('Manage Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)),
            Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 25,),
            ],)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: TextButton(
                style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFFD1C4E9),)) ,
                onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(child: Text('Log Out',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 25,),
              ],)),
          ),
        ),

      ],);
  }
}
