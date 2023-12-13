import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Insert/bottom_bar_screen.dart';
import 'package:flutter_application_1/auth/login_or_register.dart';
import '../pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Người dùng đăng nhập thành công
          if (snapshot.hasData) {
            return const BottomBarScreen();
          }

          // Người dùng đăng nhập thất bại
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
