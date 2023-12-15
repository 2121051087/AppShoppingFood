import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/build_logo.dart';
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
      default:
        message = 'Không tìm thấy tài khoản';
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
    final isKeyBroad = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: Text("Shopping Food",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,

            ),
        ),
      ),



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
          // image
          child: ListView(

            children: [
              SizedBox(height: 80),

              if(!isKeyBroad) BuildLogo(
                  imageUrl:'assets/images/img_sign_in.png'

              ),
              SizedBox(height:64),

                 Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),

                            child: Column(
                              children: [


                                // Nhập email
                                MyTextField(
                                    controller: emailTextController,
                                    hintText: 'Email',
                                    obscureText: false),

                                const SizedBox(height: 16),

                                // Nhập Mật khẩu
                                MyTextField(
                                  controller: passwordTextController,
                                  hintText: 'Mật khẩu',
                                  obscureText: true,
                                ),

                                const SizedBox(height: 32),

                                MyButtonLogin(
                                  onTap: signIn,
                                  text: 'Đăng Nhập',
                                ),


                                const SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Quên mật khẩu ?",
                                      style: TextStyle(
                                        color: Colors.white,
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
                                          fontSize:18,
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







            ],
          ),

        ),






    );

  }
}
