
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../components/app_colors.dart';
import '../../components/app_vectors.dart';
import '../../components/quick_filter_button.dart';

import '../Four_Screen/Four_Screen.dart';

import 'Edit_button.dart';
import 'Food_List.dart';


class PromoPage extends StatefulWidget {
  const PromoPage({super.key});





  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {





  @override
  bool showBottomNavigationBar = false;
  void _onAddButtonPressed() {
    // Xử lý sự kiện khi nút Add được nhấn

    setState(() {
      showBottomNavigationBar = !showBottomNavigationBar;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: AppColors.backgroundGrayColor,
        child: Column(
          children:<Widget> [
            Container(
              height:164,
              color:Colors.white,
              child: Column(
                children:<Widget> [
                  Container(
                    padding:EdgeInsets.only(top:18),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16 , top: 22),
                              child: SvgPicture.asset(
                                AppVector.icComeBack,
                              ),

                          ),
                        ),
//------------------ button returns to the previous page----------------------------------
                        const SizedBox(width: 33),
                        const Padding(
                          padding: EdgeInsets.only(top:26),
                          child: Center(
                            child: Text(
                              "Today's Promo",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),





                  //              listView icons
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Container(
                      height:48,
                      width:double.infinity,
                      child: ListView.builder(
                        itemCount: 4, // Number of items in the list
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          switch (index) {
                            case 0: // Filter button
                              return const QuickFilterButton(text: "Filter ", vector: AppVector.icFilter, );

                            case 1: // Nearby button
                              return const QuickFilterButton(text: "Nearby ", vector: AppVector.icNearby,buttonColor: AppColors.textPrimaryColor,textColor: AppColors.whiteColor,);
                            case 2: // Above 4.5 button
                              return const QuickFilterButton(text: "Above 4.5 ", vector: AppVector.icAbove, );
                            case 3: // Cheapest button
                              return const QuickFilterButton(text: "Cheapest ", vector: AppVector.icCheapest, );
                            default:
                              return SizedBox(); // Empty widget for any other index
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //-----------------------------------------------------

            Expanded(
              child: Container(
                width:345,
                decoration: BoxDecoration(
                  color: AppColors.backgroundGrayColor,
                  // color:Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: ListView.separated(
                    itemCount: stores.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Container(
                        height:36,
                        color:AppColors.backgroundGrayColor,
                      );
                    },
                    itemBuilder: (context, index) {
                      final items = stores[index];
                      return Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(items.storeName!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppVector.icStar,
                                    ),
                                    SizedBox(width: 4),
                                    Text(items.rate!),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height:8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(items.address!),

                                Text(items.distance!)
                              ],
                            ),
                            FoodList(),


                            Container(
                              margin:EdgeInsets.only(right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: _onAddButtonPressed,
                                    style:ElevatedButton.styleFrom(
                                      backgroundColor:  Color(0xFF1D2D50),
                                      maximumSize: Size(82, 36) ,
                                    ),
                                    child:  const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(Icons.add,
                                          color: Colors.white,),
                                        Text('Add'),
                                      ],
                                    ),

                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),

                      );
                    }
                ),

              ),
            )

            //--------------------------------------------------------------


          ],
        ),


      ),
      bottomNavigationBar: showBottomNavigationBar ? Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1D2D50),
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>   const  FourScreen(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1 item',
                    style:TextStyle(
                      color:AppColors.whiteColor,
                    )
                  ),
                  SizedBox(width: 70),
                  Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 70),
                  Text("\$18.50",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      :null,

    );

  }
}





class StoreEntity {
  String? storeName;
  String? rate;
  String? address;
  String?  distance;



  StoreEntity({
    this.address,
    this.distance,
    this.rate,
    this.storeName,

  });
}

List<StoreEntity> stores = [
  StoreEntity(
    address: "ZindaBa zar, Sylhet",
    distance: "1 km",
    rate:"5.0",
    storeName:"Delics Italian Pizza",


  ),
  StoreEntity(
    address: "Jl. Bagawanta bhari no 12, Ngasem",
    distance: "1,5 Km",
    rate:"5.0",
    storeName:"Bakso jumbo pak ndut",

  ),
];

