import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button_login.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //  lấy email password từ firebase
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

  // người dùng đăng ký
  void signUp() async {
    // load màn hình
    showDialog(
      context: context,
      builder: (context) => const Center(
        // hiển thị load
        child: CircularProgressIndicator(),
      ),
    );
    if (passwordTextController.text != confirmPasswordTextController.text) {
      Navigator.pop(context);
      // Hiển thị thông báo lỗi
      displayMessage("Mật khẩu không khớp!");
      return;
    }

    // tạo mới 1 người dùng trên firebase
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      
      Navigator.pop(context);
      // Hiển thị thông báo lỗi firebase
      displayMessage(e.code);
    }
  }

  // Hiển thị thông báo
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
      
                  Padding(
                    padding: const EdgeInsets.only(right: 90,left: 90,bottom: 20),
                    child: Image.asset(
                      'assets/images/intro.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Đăng Ký",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.grey[900],
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
      
                  const SizedBox(height: 10),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nhanh chóng và dễ dàng.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
      
                  const SizedBox(height: 25),
      
                  // Nhập email
                  MyTextField(
                      controller: emailTextController,
                      hintText: 'Email',
                      obscureText: false),
      
                  const SizedBox(height: 10),
      
                  // Nhập mật khẩu
                  MyTextField(
                    controller: passwordTextController,
                    hintText: 'Mật khẩu',
                    obscureText: true,
                  ),
      
                  const SizedBox(height: 10),
      
                  // Xác nhận mật khẩu
                  MyTextField(
                    controller: confirmPasswordTextController,
                    hintText: 'Nhập lại Mật khẩu',
                    obscureText: true,
                  ),
      
                  const SizedBox(height: 25),
      
                  MyButtonLogin(
                    onTap: signUp,
                    text: 'Đăng ký',
                  ),
      
                  const SizedBox(height: 20),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn đã có tài khoản?",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Đăng nhập",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
