import 'package:coaching_class_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAccPage extends StatefulWidget {
  const EditAccPage({super.key});

  @override
  State<EditAccPage> createState() => _EditAccPageState();
}

class _EditAccPageState extends State<EditAccPage> {
  @override
  Widget build(BuildContext context) {
    var _emailController;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
                    color: const Color.fromRGBO(15, 12, 128, 1),
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
                      color: const Color.fromRGBO(15, 12, 128, 1),
                      fontSize: MainApp.widthCal(14),
                      fontWeight: FontWeight.w400,
                      height: 24 / MainApp.widthCal(14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MainApp.widthCal(39),
                  top: MainApp.heightCal(61),
                ),
                child: Row(
                  children: [
                    Text(
                      "Edit Account",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(16),
                        fontWeight: FontWeight.w500,
                        height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MainApp.widthCal(213),
                        // top: MainApp.heightCal(55.35),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility_off_sharp,
                            size: MainApp.widthCal(14.66),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(47), top: MainApp.heightCal(26)),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: MainApp.widthCal(5.82),
                    ),
                    Text(
                      "Name",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(15),
                        fontWeight: FontWeight.w400,
                        height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MainApp.widthCal(43),
                          top: MainApp.heightCal(15)),
                      child: Container(
                          height: MainApp.heightCal(34),
                          width: MainApp.widthCal(220),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(15, 12, 128, 1),
                                width: 1.5),
                            borderRadius:
                                BorderRadius.circular(MainApp.widthCal(15)),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Color.fromRGBO(15, 12, 128, 1),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(47), top: MainApp.heightCal(26)),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(
                      width: MainApp.widthCal(5.82),
                    ),
                    Text(
                      "DOB",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(15),
                        fontWeight: FontWeight.w400,
                        height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MainApp.widthCal(52),
                          top: MainApp.heightCal(11)),
                      child: Container(
                          height: MainApp.heightCal(34),
                          width: MainApp.widthCal(220),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(15, 12, 128, 1),
                                width: 1.5),
                            borderRadius:
                                BorderRadius.circular(MainApp.widthCal(15)),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Color.fromRGBO(15, 12, 128, 1),
                              ),
                              hintText: "Date of Birth",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(47), top: MainApp.heightCal(26)),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: MainApp.widthCal(5.82),
                    ),
                    Text(
                      "Number",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(15),
                        fontWeight: FontWeight.w400,
                        height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MainApp.widthCal(27),
                          top: MainApp.heightCal(11)),
                      child: Container(
                          height: MainApp.heightCal(34),
                          width: MainApp.widthCal(220),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(15, 12, 128, 1),
                                width: 1.5),
                            borderRadius:
                                BorderRadius.circular(MainApp.widthCal(15)),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Color.fromRGBO(15, 12, 128, 1),
                              ),
                              hintText: "Mobile Number",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(47), top: MainApp.heightCal(26)),
                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox(
                      width: MainApp.widthCal(5.82),
                    ),
                    Text(
                      "Address",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(31, 31, 57, 1),
                        fontSize: MainApp.widthCal(15),
                        fontWeight: FontWeight.w400,
                        height: 24 / MainApp.widthCal(16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MainApp.widthCal(27),
                          top: MainApp.heightCal(11)),
                      child: Container(
                          height: MainApp.heightCal(34),
                          width: MainApp.widthCal(220),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(15, 12, 128, 1),
                                width: 1.5),
                            borderRadius:
                                BorderRadius.circular(MainApp.widthCal(15)),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Color.fromRGBO(15, 12, 128, 1),
                              ),
                              hintText: "Addresses",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MainApp.heightCal(20),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MainApp.widthCal(119),
                  top: MainApp.heightCal(17),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: MainApp.heightCal(38),
                  width: MainApp.widthCal(175),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color.fromRGBO(178, 235, 242, 1),
                  ),
                  child: Text(
                    "Save ",
                    style: GoogleFonts.archivo(
                      fontSize: MainApp.widthCal(18),
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(15, 12, 128, 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
