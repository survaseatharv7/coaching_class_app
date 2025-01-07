import 'package:coaching_class_app/main.dart';
import 'package:coaching_class_app/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(20), top: MainApp.heightCal(69)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: MainApp.widthCal(24),
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Back',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: MainApp.widthCal(20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(20), top: MainApp.heightCal(99)),
                child: Text("Login",
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(15, 12, 128, 1),
                        fontSize: MainApp.widthCal(30),
                        fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(39), top: MainApp.heightCal(46)),
                child: Container(
                    height: MainApp.heightCal(46.47),
                    width: MainApp.widthCal(333),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          width: 1.5),
                      borderRadius: BorderRadius.circular(MainApp.widthCal(15)),
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Color.fromRGBO(15, 12, 128, 1),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(39), top: MainApp.heightCal(31.61)),
                child: Container(
                    height: MainApp.heightCal(46.47),
                    width: MainApp.widthCal(333),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          width: 1.5),
                      borderRadius: BorderRadius.circular(MainApp.widthCal(15)),
                    ),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Color.fromRGBO(15, 12, 128, 1),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(257), top: MainApp.heightCal(32)),
                child: Container(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          fontSize: MainApp.widthCal(15),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(56),
                    right: MainApp.widthCal(56),
                    top: MainApp.heightCal(46)),
                child: Container(
                  width: MainApp.widthCal(329.6),
                  height: MainApp.heightCal(53.47),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(178, 235, 242, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(MainApp.widthCal(10)))
                        // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        ),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.archivo(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          fontSize: MainApp.widthCal(18),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(104), top: MainApp.heightCal(52)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Text(
                        'Don\'t have account?',
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: MainApp.widthCal(15),
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(15, 12, 128, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: MainApp.widthCal(15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
