import 'package:flutter/material.dart';

class MyOrdersNavBar extends StatelessWidget {
  const MyOrdersNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 190,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Anything else?",
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF3E4462),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF1D2D50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 86,
                              width: 72,
                              child: Image.network(
                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/12/29/16/junk-food-istock-zeljkosantrac.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                const Text(
                                  'Scone Piza',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF1D2D50),
                                  ),
                                ),
                                const SizedBox(height: 10),
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
                                              borderRadius: BorderRadius.circular(1),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on,
                                      color: Color(0xFF3E4462),
                                      weight: 16,
                                    ),
                                    SizedBox(width: 8),
                                    Row(
                                      children: [
                                        Text(
                                          "Free delivery",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF7E7E7E),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 22,
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 16,
                                  spreadRadius: 1.0,
                                  offset: const Offset(4.0, 4.0),
                                ),
                              ]),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xFF1D2D50),
                              size: 26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 86,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xFF1D2D50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(4),
                                onTap: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Add",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
