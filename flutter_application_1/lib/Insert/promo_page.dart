
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Insert/Four_Screen.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/cart_page.dart';
import 'detail_Page.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});



  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
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
        color: Colors.black26,
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
                                "assets/vectors/ic_Left.svg",

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
                                color: Color(0xFF1D2D50),
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
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: Padding(
                                  padding:  const EdgeInsets.only(left: 16,bottom:4),
                                  child: Container(
                                    width: 74,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,

                                          offset: Offset(4, 4),
                                          blurRadius: 0.3,
                                          spreadRadius: 0.2,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/vectors/ic_filter.svg",
                                        ),
                                        const Text(
                                          " Filter",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );

                            case 1: // Nearby button
                              return Padding(
                                padding: const EdgeInsets.only(left: 16 ,bottom:4),
                                child: Container(
                                  width: 83,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xFF1D2D50),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(4, 4),
                                        blurRadius: 0.3,
                                        spreadRadius: 0.2,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_current.svg",
                                      ),
                                      const Text(
                                        " Nearby",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            case 2: // Above 4.5 button
                              return Padding(
                                padding: const EdgeInsets.only(left: 16,bottom:4),
                                child: Container(
                                  width: 97,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(4, 4),
                                        blurRadius: 0.3,
                                        spreadRadius: 0.2,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_star.svg",
                                      ),
                                      const Text(
                                        " Above 4.5",
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            case 3: // Cheapest button
                              return Padding(
                                padding: const EdgeInsets.only(left: 16 , right:16,bottom:4),
                                child: Container(
                                  width: 98,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(4, 4),
                                        blurRadius: 0.3,
                                        spreadRadius: 0.2,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_cheapest.svg",
                                      ),
                                      const Text(
                                        " Cheapest",
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            default:
                              return SizedBox.shrink(); // Empty widget for any other index
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
                width:375,

                padding: const EdgeInsets.only(top: 10.0),
                child: ListView.builder(
                    itemCount: 3, // Number of items in the list
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      switch (index){
                        case 0:
                          return  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                 children: [Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: 345,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),

                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:<Widget>[
                                            const Padding(
                                                padding: EdgeInsets.only(left:8.0 , top:8),
                                                child: Text(
                                                  'Delics Italian Pizza',
                                                  style: TextStyle(
                                                    color: Color(0xFF3E4462),
                                                    fontSize: 18,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(right: 8.0 ,top:8),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/vectors/ic_Stars.svg",
                                                  ),
                                                  Text(" 5.0"),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),  //Text Delics Italian Pizza

                                        SizedBox(height: 8.0),

                                        const Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Padding(
                                                padding: EdgeInsets.only(left:8.0),
                                                child: Text(
                                                  'ZindaBa zar, Sylhet',
                                                  style: TextStyle(
                                                    color: Color(0xFF7E7E7E),
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                            ),

                                            Padding(
                                              padding: EdgeInsets.only(right:8.0),
                                              child: Text("1km"),
                                            ),
                                          ],
                                        ),////Text ZindaBa zar, Sylhet

                                        SizedBox(height: 5.0),
                                        Center(
                                          child: Container(

                                            width:310,
                                            height:4,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 5.0),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 323,
                                            color: Colors.white,

                                            child: ListView.separated(
                                              padding: EdgeInsets.symmetric(horizontal: 16),
                                              itemCount: foods.length,
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              physics: NeverScrollableScrollPhysics(),
                                              separatorBuilder: (context, index) {
                                                return SizedBox(width: 16);
                                              },
                                              itemBuilder: (context, index) {
                                                final item = foods[index];

                                                return Column(
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) =>   const DetailScreen(),
                                                              ),
                                                            );
                                                          },

                                                          child: Container(
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
                                                        ),
                                                        Expanded(

                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              const Text(
                                                                'Multigrain Pizza',
                                                                style: TextStyle(
                                                                  color: Color(0xFF3E4462),
                                                                  fontSize: 16,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w500,


                                                                ),
                                                              ),

                                                               Padding(
                                                                 padding: const EdgeInsets.all(8.0),
                                                                 child: Row(
                                                                    children: <Widget>[
                                                                      Text("\$18.50"),
                                                                      SizedBox(width:8),
                                                                      Stack(
                                                                        children: [
                                                                          const Text(
                                                                            '22.500',
                                                                            style: TextStyle(
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: Color(0xffc9c9c9),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            bottom: 6,
                                                                            child: Container(
                                                                              height: 1,
                                                                              width: 38,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.black12,
                                                                                borderRadius: BorderRadius.circular(1),
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                               ),



                                                                Row(
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: <Widget>[
                                                                    Container(
                                                                      width:20,
                                                                      height:20,
                                                                      decoration: BoxDecoration(
                                                                        color: Colors.cyan,
                                                                        borderRadius: BorderRadius.circular(10),
                                                                      ),
                                                                      child: Center(child: Text("%")),
                                                                    ),
                                                                       SizedBox(width:8),


                                                                       const Text(
                                                                        'Free delivery ',
                                                                        style: TextStyle(
                                                                          color: Color(0xFF7E7E7E),
                                                                          fontSize: 12,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400,
                                                                        ),
                                                                      ),

                                                                  ],
                                                                ),







                                                            ],
                                                          ),
                                                        ),



                                                        Container(
                                                          margin:EdgeInsets.only(left:41,bottom:70),
                                                          height:28,
                                                          width:28,
                                                          decoration: BoxDecoration(
                                                            color:Colors.white,
                                                            borderRadius: BorderRadius.circular(14),
                                                            boxShadow:   [
                                                              BoxShadow(
                                                                color: Colors.grey,
                                                                offset: Offset(4, 4),
                                                                blurRadius: 2.0,
                                                                spreadRadius: 0.5,
                                                              ),
                                                            ],
                                                          ),
                                                          child: SvgPicture.asset('assets/vectors/ic_heart_favorite.svg'),

                                                        ),


                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: <Widget>[
                                                        Container(
                                                          margin: const EdgeInsets.only(right: 36),
                                                          height: 24,
                                                          width: 24,
                                                          decoration: ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(4)),
                                                          ),
                                                          child: SvgPicture.asset(
                                                              'assets/vectors/ic_vector.svg'),
                                                        ),
                                                        Container(
                                                          width: 88,
                                                          height: 26,
                                                          clipBehavior: Clip.antiAlias,
                                                          decoration: const BoxDecoration(
                                                              color: Color(0xFFF8F5F2)),
                                                          child: Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                width: 24,
                                                                height: 24,
                                                                clipBehavior: Clip.antiAlias,
                                                                decoration: ShapeDecoration(
                                                                  color: const Color(0xFFE1E1E1),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(4)),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.remove,
                                                                  color: Colors.white,
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              const SizedBox(width: 16),
                                                              const Text(
                                                                '1',
                                                                style: TextStyle(
                                                                  color: Color(0xFF3E4462),
                                                                  fontSize: 12,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,

                                                                ),
                                                              ),
                                                              const SizedBox(width: 16),
                                                              Container(
                                                                width: 24,
                                                                height: 24,
                                                                clipBehavior: Clip.antiAlias,
                                                                decoration: ShapeDecoration(
                                                                  color: const Color(0xFF1D2D50),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(4),
                                                                  ),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.add,
                                                                  color: Colors.white,
                                                                  size: 20,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),






                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),








                                      ],
                                    ),
                                  ),
                                   Positioned(
                                       bottom:0,
                                       right:20,
                                       child:Container(
                                         height:50,
                                         width:300,
                                         color:Colors.white,

                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.end,
                                             children: [
                                               ElevatedButton(
                                                   onPressed: _onAddButtonPressed,
                                                   style:ElevatedButton.styleFrom(
                                                     backgroundColor:  Color(0xFF1D2D50),
                                                    maximumSize: Size(82, 36) ,
                                                   ),

                                                  child: const Row(
                                                       mainAxisSize: MainAxisSize.min,
                                                       mainAxisAlignment: MainAxisAlignment.center,
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: <Widget>[

                                                         Icon(
                                                           Icons.add,
                                                           color: Colors.white,
                                                           size: 18,
                                                         ),
                                                         SizedBox(width: 8),
                                                         Text(
                                                           'Add',
                                                           style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: 12,
                                                             fontFamily: 'Poppins',
                                                             fontWeight: FontWeight.w400,
                                                           ),
                                                         ),
                                                       ],
                                                     ),

                                                 ),

                                             ],
                                           ),

                                       )

                                   ),

                      ],
                              ),
                            ],
                          );

                      //-----------------------------------
                        case 1:
                          return Container(
                            width:345,
                            height:20,
                          );
// ------------------------------------------------------------------------------------------
                        case 2:
                          return  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [Container(
                                  padding: EdgeInsets.all(8.0),
                                  width: 345,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),

                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:<Widget>[
                                          const Padding(
                                              padding: EdgeInsets.only(left:8.0 , top:8),
                                              child: Text(
                                                'Delics Italian Pizza',
                                                style: TextStyle(
                                                  color: Color(0xFF3E4462),
                                                  fontSize: 18,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0 ,top:8),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_Stars.svg",
                                                ),
                                                Text(" 5.0"),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),  //Text Delics Italian Pizza

                                      SizedBox(height: 8.0),

                                      const Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(left:8.0),
                                              child: Text(
                                                'ZindaBa zar, Sylhet',
                                                style: TextStyle(
                                                  color: Color(0xFF7E7E7E),
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(right:8.0),
                                            child: Text("1km"),
                                          ),
                                        ],
                                      ),////Text ZindaBa zar, Sylhet

                                      SizedBox(height: 5.0),
                                      Center(
                                        child: Container(

                                          width:310,
                                          height:4,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5.0),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 323,
                                          color: Colors.white,

                                          child: ListView.separated(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            itemCount: foods.length,
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            separatorBuilder: (context, index) {
                                              return SizedBox(width: 16);
                                            },
                                            itemBuilder: (context, index) {
                                              final item = foods[index];

                                              return Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>   const DetailScreen(),
                                                            ),
                                                          );
                                                        },

                                                        child: Container(
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
                                                      ),
                                                      Expanded(

                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            const Text(
                                                              'Multigrain Pizza',
                                                              style: TextStyle(
                                                                color: Color(0xFF3E4462),
                                                                fontSize: 16,
                                                                fontFamily: 'Poppins',
                                                                fontWeight: FontWeight.w500,


                                                              ),
                                                            ),

                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Row(
                                                                children: <Widget>[
                                                                  Text("\$18.50"),
                                                                  SizedBox(width:8),
                                                                  Stack(
                                                                    children: [
                                                                      const Text(
                                                                        '22.500',
                                                                        style: TextStyle(
                                                                          fontSize: 12,
                                                                          fontWeight: FontWeight.w400,
                                                                          color: Color(0xffc9c9c9),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        bottom: 6,
                                                                        child: Container(
                                                                          height: 1,
                                                                          width: 38,
                                                                          decoration: BoxDecoration(
                                                                            color: Colors.black12,
                                                                            borderRadius: BorderRadius.circular(1),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),



                                                            Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Container(
                                                                  width:20,
                                                                  height:20,
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.cyan,
                                                                    borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  child: Center(child: Text("%")),
                                                                ),
                                                                SizedBox(width:8),


                                                                const Text(
                                                                  'Free delivery ',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF7E7E7E),
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w400,
                                                                  ),
                                                                ),

                                                              ],
                                                            ),







                                                          ],
                                                        ),
                                                      ),



                                                      Container(
                                                        margin:EdgeInsets.only(left:41,bottom:70),
                                                        height:28,
                                                        width:28,
                                                        decoration: BoxDecoration(
                                                          color:Colors.white,
                                                          borderRadius: BorderRadius.circular(14),
                                                          boxShadow:   [
                                                            BoxShadow(
                                                              color: Colors.grey,
                                                              offset: Offset(4, 4),
                                                              blurRadius: 2.0,
                                                              spreadRadius: 0.5,
                                                            ),
                                                          ],
                                                        ),
                                                        child: SvgPicture.asset('assets/vectors/ic_heart_favorite.svg'),

                                                      ),


                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: const EdgeInsets.only(right: 36),
                                                        height: 24,
                                                        width: 24,
                                                        decoration: ShapeDecoration(
                                                          color: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(4)),
                                                        ),
                                                        child: SvgPicture.asset(
                                                            'assets/vectors/ic_vector.svg'),
                                                      ),
                                                      Container(
                                                        width: 88,
                                                        height: 26,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: const BoxDecoration(
                                                            color: Color(0xFFF8F5F2)),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 24,
                                                              height: 24,
                                                              clipBehavior: Clip.antiAlias,
                                                              decoration: ShapeDecoration(
                                                                color: const Color(0xFFE1E1E1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(4)),
                                                              ),
                                                              child: const Icon(
                                                                Icons.remove,
                                                                color: Colors.white,
                                                                size: 20,
                                                              ),
                                                            ),
                                                            const SizedBox(width: 16),
                                                            const Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color(0xFF3E4462),
                                                                fontSize: 12,
                                                                fontFamily: 'Poppins',
                                                                fontWeight: FontWeight.w400,

                                                              ),
                                                            ),
                                                            const SizedBox(width: 16),
                                                            Container(
                                                              width: 24,
                                                              height: 24,
                                                              clipBehavior: Clip.antiAlias,
                                                              decoration: ShapeDecoration(
                                                                color: const Color(0xFF1D2D50),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(4),
                                                                ),
                                                              ),
                                                              child: const Icon(
                                                                Icons.add,
                                                                color: Colors.white,
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),






                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ),








                                    ],
                                  ),
                                ),
                                  Positioned(
                                      bottom:0,
                                      right:20,
                                      child:Container(
                                        height:50,
                                        width:300,
                                        color:Colors.white,

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: _onAddButtonPressed,
                                              style:ElevatedButton.styleFrom(
                                                backgroundColor:  Color(0xFF1D2D50),
                                                maximumSize: Size(82, 36) ,
                                              ),

                                              child: const Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[

                                                  Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 18,
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'Add',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ),

                                          ],
                                        ),

                                      )

                                  ),

                                ],
                              ),
                            ],
                          );

                        default:
                          return SizedBox.shrink();
                      }




                    }


                ),
              ),
            ),

            //--------------------------------------------------------------


          ],
        ),


      ),
      bottomNavigationBar: showBottomNavigationBar ? Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
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
                    "1 item",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "\$18.50",
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



class FoodEntity {
  String? foodName;
  String? image;

  FoodEntity({
    this.image,
    this.foodName,
  });
}

List<FoodEntity> foods = [
  FoodEntity(
    foodName: "Pizza",
    image: "assets/images/img_Multigrain_Pizza.png",

  ),
  FoodEntity(
    foodName: "Noodle",
    image: "assets/images/img_Chicken_Pizza.png",
  ),
];

