import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/build_logo.dart';
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

  // Bẫy lỗi
  void displayMessage(String code) {
    String message;
    switch (code) {
      case 'invalid-email':
        message = 'Email không đúng';
        break;
      case 'INVALID_LOGIN_CREDENTIALS':
        message = 'Mật khẩu không đúng';
        break;
      case 'weak-pasword':
        message = 'Mật khẩu cần số và chữ hoặc ký tự đặc biệt';
        break;
      case 'email-already-in-use':
        message = 'Tài khoản đã tồn tại';
        break;
      default:
        message = 'Bạn chưa nhập tất cả các thông tin';
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        // title: Text(message),
        content: Text(
          message,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.red),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

         body: Container(

           decoration: const BoxDecoration(
             gradient: RadialGradient(
               colors: [
                 Colors.black,
                 Colors.deepPurple,
                 Colors.green,

               ],
               focal: Alignment.centerRight,
               center:Alignment.centerLeft,
               radius:2.8,
             ),
           ),


               child: ListView(
                 children:[ Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height:64),
                                        Text(
                                          "Shopping Food",
                                          style: GoogleFonts.dmSerifDisplay(
                                            color: Colors.white,
                                            fontSize: 28,
                                          ),
                                        ),
                                      ],
                                    ),

                                    BuildLogo(
                                        imageUrl:'assets/images/img_register.png'

                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Đăng Ký",
                                          style: GoogleFonts.dmSerifDisplay(
                                            color: Colors.white,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 10),

                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nhanh chóng và dễ dàng.",
                                          style: TextStyle(
                                            color: Colors.grey,
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
                                        const Text(
                                          "Bạn đã có tài khoản?",
                                          style: TextStyle(
                                            color: Colors.white,
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
                                              fontSize:18,
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
                   ],
                 ),
           ],
               ),

         ),


        // ),
      );

  }
}
