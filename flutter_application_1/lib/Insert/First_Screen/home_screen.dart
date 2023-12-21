import 'package:flutter/material.dart';
import 'package:flutter_application_1/Insert/Second_Screen/promo_page.dart';
import 'package:flutter_application_1/components/drawer.dart';
import 'package:flutter_svg/svg.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  const MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 24),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE84C4F).withOpacity(0.22),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Flexible(
                              child: Text(
                                "Jl . Jayakatwang no 301",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.expand_more,
                                weight: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 73),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 32,
                          height: 32,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFF1D2D50),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -3,
                          right: 0,
                          child: Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E5F74),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Yahya",
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF3E4462),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "What do you want to eat?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF7E7E7E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite_border,
                                color: Color(0xFF1D2D50),
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 9),
                        child: Text(
                          "Favorite",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.local_offer_outlined,
                                color: Color(0xFF1D2D50),
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "Cheap",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.trending_up,
                                color: Color(0xFF1D2D50),
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 9),
                        child: Text(
                          "Trend",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 74,
                        height: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.apps,
                                color: Color(0xFF1D2D50),
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 9),
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7E7E7E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's promo",
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF1D2D50),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3E4462),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 325,
              width: double.infinity,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: foods.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final item = foods[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>   const  PromoPage(),
                        ),
                      );
                    },

                    child: Stack(
                      children: [
                        Container(
                          width: 300,
                          height: 323,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                '${item.image}',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right:16,

                          child: Container(
                            height:32,
                            width:35,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(14),

                            ),
                            child: SvgPicture.asset('assets/vectors/ic_heart_favorite.svg'),

                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 16,
                          right: 16,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Italian Pizza",
                                      style: TextStyle(
                                        color: Color(0xFF3E4462),
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    const Text(
                                      "Delics Italian pizza with chess ",
                                      style: TextStyle(
                                        color: Color(0xFF7E7E7E),
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$18.50",
                                          style: TextStyle(
                                            color: Color(0xFF3E4462),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Stack(
                                          children: [
                                            const Text(
                                              '22.500',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -0.2399999946,
                                                color: Color(0xffc9c9c9),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 6,
                                              child: Container(
                                                height: 1,
                                                width: 38,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                  BorderRadius.circular(1),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 66,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(4),
                                              color: const Color(0xFF1E5F74),
                                            ),
                                            child: InkWell(
                                              borderRadius:
                                              BorderRadius.circular(4),
                                              onTap: () {},
                                              child: const Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "5 Left",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
    image: "assets/images/img_pizza.png",
  ),
  FoodEntity(
    foodName: "Noodle",
    image: "assets/images/img_hotdog_pizza.png",
  ),
  FoodEntity(
    foodName: "Noodle",
    image: "assets/images/img_hotdog_pizza.png",
  ),
  FoodEntity(
    foodName: "Noodle",
    image: "assets/images/img_hotdog_pizza.png",
  ),
];
