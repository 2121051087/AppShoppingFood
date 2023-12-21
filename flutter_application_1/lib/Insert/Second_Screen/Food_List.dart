import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../components/app_colors.dart';
import '../../components/app_vectors.dart';
import 'Edit_button.dart';

class FoodList extends StatelessWidget {

  const FoodList({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // color:Colors.red,
        width: 345,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 16),
                itemCount: foods.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return EditButton();
                },
                itemBuilder: (context, index) {
                  final item = foods[index];
                  return
                    Stack(
                        children:[ Row(
                          children: [
                            Container(
                              width: 100,
                              height: 123,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(
                                    '${item.image}',
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(item.foodName!,
                                  style:const TextStyle(
                                    color:AppColors.textPrimaryColor,
                                    fontSize:20,
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                                  child: Row(

                                    children: [
                                      Text(item.currentPrice!,
                                          style:const TextStyle(
                                            color:AppColors.TextGray,
                                            fontSize: 18,
                                          )),
                                      SizedBox(width: 8),

                                      Stack(
                                          children: [
                                            Text(item.oldMoneyPrice!,
                                              style:TextStyle(
                                                color:Colors.grey[400],
                                                fontSize:18,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 8,
                                              child: Container(
                                                height: 4,
                                                width: 45,
                                                decoration: BoxDecoration(
                                                  color: Colors.black38,
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                              ),
                                            ),

                                          ]
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width:16,
                                      height:16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color:AppColors.BlueyGreen,
                                      ),
                                      child: const Center(
                                        child: Text("%",
                                          style:TextStyle(
                                            color:AppColors.whiteColor,
                                          ),),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Text(item.shippingCoupon!)
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                          Positioned(
                            top: 4,
                            right:0,
                            child:Container(
                              height:28,
                              width:28,
                              decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow:   const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(4, 4),
                                    blurRadius: 2.0,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: SvgPicture.asset(AppVector.icHeart),

                            ),

                          )
                        ]


                    );


                }
            ),
          ],
        ),

    );
  }
}
class FoodEntity {
  String? foodName;
  String? image;
  String? currentPrice;
  String? oldMoneyPrice;
  String? shippingCoupon;

  FoodEntity({
    this.image,
    this.foodName,
    this.currentPrice,
    this.oldMoneyPrice,
    this.shippingCoupon,
  });
}

List<FoodEntity> foods = [
  FoodEntity(
    foodName: "Multigrain Pizza",
    image: "assets/images/img_Multigrain_Pizza.png",
    currentPrice:"18.50",
    oldMoneyPrice:"22.50",
    shippingCoupon:"Free delivery",

  ),
  FoodEntity(
    foodName: "Chicken Pizza",
    image: "assets/images/img_Chicken_Pizza.png",
    currentPrice:"20.50",
    oldMoneyPrice:"24.50",
    shippingCoupon:"Delivery discount up to 3K",
  ),
];