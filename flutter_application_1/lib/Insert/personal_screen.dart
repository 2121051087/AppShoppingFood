
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  // Đăng xuất
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  // lấy email
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Column(
          children: [
            // header
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                 const Icon(
                    Icons.person,
                    color: Colors.black45,
                    size: 64,
                  ),

                Text(
                  currentUser.email!,
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                  ),
                ),
              ],
            ),


            const SizedBox(height: 400),



            // đăng xuất
            InkWell(
              onTap: () {
                signOut();
              },

              child: Container(
                height: 48,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Đăng xuất",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              ),

          ],
        ),

    );
  }
}
