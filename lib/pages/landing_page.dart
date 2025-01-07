import 'package:coaching_class_app/main.dart';
import 'package:coaching_class_app/pages/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget todayBatchCard() {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            Image.asset("assets/Images/myBatchImage.png"),
            Container(
              height: MainApp.heightCal(69),
              width: MainApp.widthCal(355.47),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MainApp.widthCal(5)),
                color: const Color.fromRGBO(236, 250, 251, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.3), // Shadow color with opacity
                    spreadRadius: 0, // No spreading
                    blurRadius: 10, // Smooth shadow
                    offset: const Offset(0, 5), // Offset in x and y
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MainApp.widthCal(15.33),
                        top: MainApp.heightCal(8.7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Batch",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(61, 92, 255, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: MainApp.widthCal(12),
                          ),
                        ),
                        SizedBox(
                          height: MainApp.heightCal(4.58),
                        ),
                        Text(
                          "11th Batch, JEE",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(31, 31, 57, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: MainApp.widthCal(20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MainApp.widthCal(60),
                        top: MainApp.heightCal(8.7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: MainApp.widthCal(20)),
                          child: Text(
                            "Today",
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(133, 133, 151, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: MainApp.widthCal(12),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "At",
                              style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(31, 31, 57, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: MainApp.widthCal(12),
                              ),
                            ),
                            Text(
                              " 6:00 pm",
                              style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(31, 31, 57, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: MainApp.widthCal(16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget markAttendanceCard() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            left: MainApp.widthCal(32), right: MainApp.widthCal(25)),
        child: Container(
          width: MainApp.widthCal(355),
          height: MainApp.heightCal(113),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MainApp.widthCal(5)),
            color: const Color.fromRGBO(236, 250, 251, 1),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.black.withOpacity(0.3), // Shadow color with opacity
                spreadRadius: 0, // No spreading
                blurRadius: 10, // Smooth shadow
                offset: const Offset(0, 5), // Offset in x and y
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MainApp.heightCal(18)),
                child: Center(
                    child: Text(
                  "Mark Today's attendance ",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(31, 31, 57, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: MainApp.widthCal(16),
                  ),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: MainApp.heightCal(14)),
                child: Center(
                  child: Container(
                      width: MainApp.widthCal(175),
                      height: MainApp.heightCal(38),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(178, 235, 242, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      MainApp.widthCal(10)))
                              // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                              ),
                          child: Text(
                            "Scan QR Code",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.archivo(
                              color: const Color.fromRGBO(15, 12, 128, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: MainApp.widthCal(18),
                            ),
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MainApp.heightCal(214),
            floating: false,
            pinned: true,
            automaticallyImplyLeading: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Hi, Aditya',
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: MainApp.widthCal(24),
                    color: const Color.fromRGBO(15, 12, 128, 1)),
              ),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  color: const Color.fromRGBO(178, 235, 242, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: MainApp.widthCal(20)),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              const Color.fromRGBO(178, 235, 242, 1),
                          child: Image.asset("assets/Images/Avatar.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          todayBatchCard(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MainApp.heightCal(59),
            ),
          ),
          markAttendanceCard(),
        ],
      ),
    );
  }
}
