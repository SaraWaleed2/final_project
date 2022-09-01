import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/product_info.dart';
import 'package:final_project/user_model.dart';
import 'package:final_project/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_page.dart';
import 'onboardring_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var textController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,bottom: 2),
                  child: Text('Smartly Shopping ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25,),),
                ),
                IconButton(onPressed: (){}, icon:Icon(Icons.add_shopping_cart_outlined,color: Colors.black,size: 28,),)
              ],
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(vertical:0.5,horizontal: 25),
                   child: AnimSearchBar(
                      helpText: "Search item....",
                      autoFocus: true,
                      closeSearchOnSuffixTap:false ,
                      style: TextStyle(fontSize: 20),
                      width: 350, textController: textController, onSuffixTap: (){
                    textController.clear();
                }),
                 ),
              CarouselSlider(items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:AssetImage('asset/online-shopping-1024x768.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:AssetImage('asset/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:AssetImage('asset/istockphoto.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:AssetImage('asset/online-coupon-codes.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image:AssetImage('asset/smart_shopping.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 10 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds:900),
                  viewportFraction: 0.8,
                )
            ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,),),
                  IconButton(onPressed: (){
                   // Navigator.push(context, MaterialPageRoute(builder:(context) =>HomeScreen()));
                  }, icon: Icon(Icons.navigate_next_outlined,size: 35,))
                ],),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text('Trending',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),

                Text('See More',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    itemCount:4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.70),
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,ProductInfo.id ,arguments:productList[index] );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color:Color(0xFFECEFF1),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: CircleAvatar(radius:55,backgroundColor: Colors.white, ),
                                    ),
                                    Center(child: Image.asset(productList[index].image!,height: 180,)),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: InkWell(
                                        onTap: (){
                                          setState(() {
                                            productList[index].isFavorite = !productList[index].isFavorite!;
                                          });
                                        },
                                        child: Icon(
                                          productList[index].isFavorite == true
                                              ?  Icons.favorite
                                              :  Icons.favorite_border ,
                                          color: Colors.red,size: 30,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Center(child: Text(productList[index].name!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                            Center(child: Text(r'$' + productList[index].price.toString(),style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
