import "package:coaching_class_app/main.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MainApp.heightCal(70)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: MainApp.widthCal(20),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: MainApp.heightCal(30),
                        )),
                    //   TextButton(
                    //       onPressed: () {
                    //         Navigator.pop(context);
                    //       },
                    //       child: Text(
                    //         "Back",
                    //         style: GoogleFonts.roboto(
                    //             fontWeight: FontWeight.w600,
                    //             fontSize: MainApp.widthCal(14),
                    //             color: Colors.black),
                    //       ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MainApp.widthCal(101), top: MainApp.heightCal(27)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/Images/Avatar.png',
                  ), // Replace with your image asset path
                ),
              ),
              SizedBox(height: MainApp.heightCal(19)),
              Padding(
                padding: EdgeInsets.only(
                  left: MainApp.widthCal(23),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Padding(
                      padding: EdgeInsets.only(left: MainApp.widthCal(30)),
                      child: Text(
                        'atharvs7123@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MainApp.widthCal(23), top: MainApp.heightCal(25)),
            child: const Text(
              'Explore',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(15, 12, 128, 1),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: MainApp.widthCal(23)),
            child: ListTile(
              leading: const Icon(Icons.qr_code_scanner),
              title: const Text('QR Scan'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MainApp.widthCal(23)),
            child: ListTile(
              leading: const Icon(Icons.recycling),
              title: const Text('Return packages material'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MainApp.widthCal(23)),
            child: ListTile(
              leading: const Icon(Icons.view_in_ar),
              title: const Text('Virtual Try on'),
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MainApp.widthCal(23)),
            child: ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change password'),
              onTap: () {
                // Handle navigation
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MainApp.widthCal(23)),
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
