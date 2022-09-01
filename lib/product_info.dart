import 'package:final_project/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({Key? key}) : super(key: key);
  static String id ="product info";
  @override
  State<ProductInfo> createState() => _ProductInfoState();
}
class _ProductInfoState extends State<ProductInfo> {
 /* List<ProductModel> infoList = [
    ProductModel(
      id: 1,
      name: 'Stojo Cup',
      price: 250.75,
      image:
      'asset/images-removebg-preview.png',
      isFavorite: false,
      color:'0xffcabbce',
    ),
    ProductModel(
      id: 2,
      name: 'Stojo Bottle',
      price: 75,
      image:
      'asset/stojo-stojo-bottle-removebg-preview.png',
      isFavorite: false,
      color:'0xffcabbce',
    ),
    ProductModel(
      id: 3,
      name: 'Stojo Cup',
      price: 99.75,
      image:
      'asset/collapsible-cup-light-pink-stojo-removebg-preview.png',
      isFavorite: false,
      color:'0xffcabbce',
    ),
    ProductModel(
      id: 4,
      name: 'Stojo Bundle',
      price: 908,
      image:
      'asset/product-card-cup-steel_600x-removebg-preview.png',
      isFavorite: false,
      color:'0xffcabbce',
    ),
  ];*/
  int index =0;
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECEFF1),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(productList[index].  name!,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Center(child: CircleAvatar(radius: 100,backgroundColor: Colors.white,)),
                    ),
                    Center(child: Image.asset(productList[index].image!,height: 350,)),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      IconButton(onPressed:(){
                        Navigator.pop(context);
                      }, icon:Icon(Icons.arrow_back_ios_new_outlined,size: 25,color: Colors.amber,)),
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
                            color: Colors.amber,size: 40,),
                        ),
                      ),
                    ],),
                  ],
                ),
                Center(child: Text(r'$' + productList[index].price.toString(),style:TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text(productList[index].description!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)),
                ),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Colors.amber),
                        half: const Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                        empty: const Icon(
                          Icons.star_outline,
                          color: Colors.amber,
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        _ratingValue = value;
                      });
                    }),
                SizedBox(height: 20,),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(onPressed: (){}, child: Text("Add To Card",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
