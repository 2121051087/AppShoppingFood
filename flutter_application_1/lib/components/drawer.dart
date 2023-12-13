import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // Đăng xuất
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  // lấy email
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // header
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 40, right: 40),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 64,
                  ),
                ),
                Text(
                  currentUser.email!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // order
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/mycart');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/order.png',
                      color: Colors.white,
                      width: 30,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "My Orders",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

             const SizedBox(height: 10),

            // Cart
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  IconButton(
                    onPressed: signOut,
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // đăng xuất
            InkWell(
              onTap: () {
                signOut();
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 100, left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
