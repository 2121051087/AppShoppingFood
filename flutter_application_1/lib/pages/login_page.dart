import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button_login.dart';
import 'package:flutter_application_1/components/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //  lấy email password từ firebase
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // người dùng đăng nhập
  void signIn() async {
    // load màn hình
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);

      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      // Hiển thị thông báo lỗi
      displayMessage(e.code);
    }
  }

  // Hiển thị thông báo hộp thoại
  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Food Man",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.grey[900],
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
      
                  // image
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 30,left: 30,bottom: 10),
                    child: Image.asset(
                      'assets/images/intro.png',
                      fit: BoxFit.cover,
                    ),
                  ),
      
                  // Nhập email
                  MyTextField(
                      controller: emailTextController,
                      hintText: 'Email',
                      obscureText: false),
      
                  const SizedBox(height: 10),
      
                  // Nhập Mật khẩu
                  MyTextField(
                    controller: passwordTextController,
                    hintText: 'Mật khẩu',
                    obscureText: true,
                  ),
      
                  const SizedBox(height: 25),
      
                  MyButtonLogin(
                    onTap: signIn,
                    text: 'Đăng Nhập',
                  ),
      
                  const SizedBox(height: 20),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quên mật khẩu?",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
