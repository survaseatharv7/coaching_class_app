import 'package:coaching_class_app/main.dart';
import 'package:coaching_class_app/pages/edit_acc_page.dart';
import 'package:coaching_class_app/pages/vhn_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MainApp.widthCal(30), top: MainApp.heightCal(70)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
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
                left: MainApp.widthCal(169.59),
                top: MainApp.heightCal(70),
              ),
              child: Image.asset(
                "assets/Images/Avatar.png",
                width: MainApp.widthCal(67.07),
                height: MainApp.heightCal(90),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MainApp.widthCal(106),
                top: MainApp.heightCal(27),
              ),
              child: Text(
                "adityasharma@gmail.com",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(15, 12, 128, 1),
                  fontSize: MainApp.widthCal(16),
                  fontWeight: FontWeight.w300,
                  height: 24 / MainApp.widthCal(16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MainApp.widthCal(114),
                top: MainApp.heightCal(7),
              ),
              child: Container(
                height: 18,
                width: 195,
                alignment: Alignment.center,
                child: Text(
                  "Preparing for - JEE",
                  //textAlign: TextAlign.center,
                  style: GoogleFonts.istokWeb(
                    color: Color.fromRGBO(15, 12, 128, 1),
                    fontSize: MainApp.widthCal(14),
                    fontWeight: FontWeight.w400,
                    height: 24 / MainApp.widthCal(14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MainApp.widthCal(38),
                top: MainApp.heightCal(51),
              ),
              child: Row(
                children: [
                  Container(
                    height: MainApp.heightCal(24),
                    child: Text(
                      "Favourite",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(16),
                        fontWeight: FontWeight.w500,
                        // height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MainApp.widthCal(240.67),
                      // top: MainApp.heightCal(55.35),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off_sharp,
                          size: MainApp.widthCal(14.66),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MainApp.widthCal(38), top: MainApp.heightCal(12)),
              child: Row(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     left: MainApp.widthCal(38),
                  //     top: MainApp.heightCal(36),
                  //   ),
                  Text(
                    "Edit Account",
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(31, 31, 57, 1),
                      fontSize: MainApp.widthCal(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: MainApp.widthCal(214),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditAccPage()));
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.visibility_off_sharp,
                          size: MainApp.widthCal(14.66),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MainApp.widthCal(38), top: MainApp.heightCal(12)),
              child: Row(
                children: [
                  Text(
                    "Settings and Privacy",
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(31, 31, 57, 1),
                      fontSize: MainApp.widthCal(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MainApp.widthCal(148),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off_sharp,
                          size: MainApp.widthCal(14.66),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MainApp.widthCal(38), top: MainApp.heightCal(12)),
              child: Row(
                children: [
                  Text(
                    "Help",
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(31, 31, 57, 1),
                      fontSize: MainApp.widthCal(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MainApp.widthCal(280.67),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off_sharp,
                          size: MainApp.widthCal(14.66),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MainApp.widthCal(84),
                top: MainApp.heightCal(76),
              ),
              child: Container(
                height: MainApp.heightCal(18),
                width: MainApp.widthCal(243),
                alignment: Alignment.center,
                child: Text(
                  "Check your attendance ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.istokWeb(
                    color: Color.fromRGBO(15, 12, 128, 1),
                    fontSize: MainApp.widthCal(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MainApp.widthCal(119),
                top: MainApp.heightCal(17),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MainApp.heightCal(38),
                  width: MainApp.widthCal(175),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color.fromRGBO(178, 235, 242, 1),
                  ),
                  child: Text(
                    "Attendance",
                    style: GoogleFonts.archivo(
                      fontSize: MainApp.widthCal(18),
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(15, 12, 128, 1),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
