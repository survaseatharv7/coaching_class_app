import 'package:coaching_class_app/main.dart';
import 'package:coaching_class_app/pages/login_page.dart';
import 'package:coaching_class_app/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Boardingpage extends StatefulWidget {
  const Boardingpage({super.key});

  @override
  State<Boardingpage> createState() => _BoardingpageState();
}

class _BoardingpageState extends State<Boardingpage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  Widget _buildPage({
    required String image,
    String? title,
    String? title2,
    required String subtitle,
    required String buttonText,
    required VoidCallback buttonAction,
    String? secondaryButtonText,
    VoidCallback? secondaryButtonAction,
    double subtitleWidth = 335,
    double subtitleHeight = 20,
    double subtitleLeftPadding = 0,
    double subtitleRightPadding = 0,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MainApp.widthCal(249.12),
            height: MainApp.heightCal(260),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        SizedBox(height: MainApp.heightCal(32)),
        if (title != null)
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.archivo(
              fontSize: MainApp.widthCal(28),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        if (title2 != null)
          Text(
            title2,
            textAlign: TextAlign.center,
            style: GoogleFonts.archivo(
              fontSize: MainApp.widthCal(20),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        SizedBox(height: MainApp.heightCal(10)),
        Padding(
          padding: EdgeInsets.only(
              left: MainApp.widthCal(subtitleLeftPadding),
              right: MainApp.widthCal(subtitleRightPadding)),
          child: Container(
            width: MainApp.widthCal(subtitleWidth),
            height: MainApp.heightCal(subtitleHeight),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.archivo(
                fontSize: MainApp.widthCal(16),
                fontWeight: FontWeight.w200,
                color: Color.fromRGBO(107, 107, 107, 1),
              ),
            ),
          ),
        ),
        SizedBox(height: MainApp.heightCal(128)),
        Container(
          width: MainApp.widthCal(329.6),
          height: MainApp.heightCal(53.47),
          child: ElevatedButton(
            onPressed: buttonAction,
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(178, 235, 242, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(MainApp.widthCal(10)))
                // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: GoogleFonts.archivo(
                  color: Color.fromRGBO(15, 12, 128, 1),
                  fontSize: MainApp.widthCal(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        if (secondaryButtonText != null)
          TextButton(
            onPressed: secondaryButtonAction,
            child: Text(
              secondaryButtonText,
              style: TextStyle(color: Colors.blue),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // PageView for sliding between pages
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              // Page 1
              _buildPage(
                image:
                    'assets/Images/boardingPageImage1.png', // Replace with your asset
                title: "Welcome to",
                title2: "Matoshree Coaching Classes",
                subtitle: "Learn . Forever.",
                buttonText: "Next",
                buttonAction: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
              ),
              // Page 2
              _buildPage(
                image:
                    'assets/Images/boardingPageImage2.png', // Replace with your asset
                subtitle:
                    "Find certified Notes, Personalize your own learning plan.",
                buttonText: "Continue",
                subtitleHeight: 50,
                subtitleWidth: 345,
                subtitleLeftPadding: 37,
                subtitleRightPadding: 30,
                buttonAction: () {
                  // Navigate to login or main screen
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignupPage()));
                },
                secondaryButtonText: "I have already had an account",
                secondaryButtonAction: () {
                  // Navigate to login screen
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
              ),
            ],
          ),
          // Dots indicator
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2, // Number of pages
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 8,
                  width: _currentPage == index ? 20 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? Colors.blue
                        : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(5),
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
