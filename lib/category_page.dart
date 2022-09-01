import 'package:final_project/product_info.dart';
import 'package:final_project/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            childAspectRatio: 0.70
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){ Navigator.pushNamed(context,ProductInfo.id ,arguments:productList[index] );},
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
                        Center(child: Image.asset(productList[index].image!,height: 230,)),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
        },
      ),
    );
  }
}
