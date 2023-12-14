import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../auth/auth.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>    const AuthPage(),
            ),
          );
        },

        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.red,
              ],
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
            ),
          ),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/images/img_start.png',
                  fit: BoxFit.cover,
                ),


                SizedBox(height:80),


                const Text(
                  "Shopping Food App",
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // const SizedBox(height: 50),
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) =>    const AuthPage(),
                //       ),
                //     );
                //   },
                //
                //
                //   child: Container(
                //     margin: const EdgeInsets.symmetric(
                //       horizontal: 36,
                //     ),
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 16,
                //       vertical: 12,
                //     ),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(32),
                //       color: Colors.white,
                //     ),
                //     child: const Center(
                //       child: Text(
                //         "Start",
                //         style: TextStyle(
                //           fontSize: 18,
                //           color: Color(0xFF1D2D50),
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
