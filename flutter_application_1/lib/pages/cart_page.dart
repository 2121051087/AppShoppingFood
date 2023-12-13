import 'package:flutter/material.dart';
import '../components/my_orders_nav_bar.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // back home
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                // image
                Image.asset(
                  'assets/images/img_oder.png',
                  height: 320,
                ),

                const Center(
                  child: Text(
                    "Your order is confirmed!",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0XFF3E4462),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    "we'll deliver your order immediately,",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7E7E7E),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Center(
                  child: Text(
                    "make sure your order put on the doorstep",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7E7E7E),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 52,
                    width: 221,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D2D50),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Check order status",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyOrdersNavBar(),
    );
  }
}
