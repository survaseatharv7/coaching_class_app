import "package:coaching_class_app/main.dart";
import "package:coaching_class_app/pages/signup_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MainApp.widthCal(295),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(13), top: MainApp.heightCal(58)),
                child: Container(
                  width: MainApp.widthCal(62),
                  height: MainApp.heightCal(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: MainApp.heightCal(30),
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: MainApp.widthCal(14),
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(96.77), top: MainApp.heightCal(37)),
                child: Container(
                    width: MainApp.widthCal(67.07),
                    height: MainApp.heightCal(90),
                    child: Image.asset(
                      "assets/Images/Avatar.png",
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MainApp.widthCal(57),
                  top: MainApp.heightCal(12),
                ),
                child: Text(
                  'Aditya Sharma',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(15, 12, 128, 1),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MainApp.widthCal(28), top: MainApp.heightCal(35)),
            child: const Text(
              'Explore',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(15, 12, 128, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MainApp.widthCal(15), top: MainApp.heightCal(32.79)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Attendance",
                      style: GoogleFonts.istokWeb(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: MainApp.widthCal(18),
                      ),
                    )),
                SizedBox(
                  height: MainApp.heightCal(32.79),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Notes",
                      style: GoogleFonts.istokWeb(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: MainApp.widthCal(18),
                      ),
                    )),
                SizedBox(
                  height: MainApp.heightCal(32.79),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Practice Quiz",
                      style: GoogleFonts.istokWeb(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: MainApp.widthCal(18),
                      ),
                    )),
                SizedBox(
                  height: MainApp.heightCal(32.79),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change Password",
                      style: GoogleFonts.istokWeb(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: MainApp.widthCal(18),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MainApp.widthCal(15), top: MainApp.heightCal(55.61)),
            child: TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                    (route) => false);
              },
              child: Text(
                'Log Out',
                style: GoogleFonts.istokWeb(
                  color: Color.fromRGBO(15, 12, 128, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: MainApp.widthCal(18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
