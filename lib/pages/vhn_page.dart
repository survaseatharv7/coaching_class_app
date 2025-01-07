import 'package:coaching_class_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoListScreen(),
    );
  }
}

class VideoListScreen extends StatefulWidget {
  @override
  _VideoListScreenState createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            const Tab(text: 'Videos'),
            const Tab(text: 'Homework'),
            const Tab(text: 'Notes'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildVideoList(),
          buildHomeworkList(),
          buildNotesList(),
        ],
      ),
    );
  }

  Widget buildVideoList() {
    return ListView(
      padding: EdgeInsets.all(MainApp.widthCal(16.0)),
      children: [
        buildVideoCard(
          title: 'The Acceleration and Velocity of a project...',
          duration: '1 hour 30 minutes',
          views: '10 Views',
        ),
        buildVideoCard(
          title: 'Displacement and Time',
          duration: '30 minutes',
          views: '50 Views',
        ),
        buildVideoCard(
          title: 'Law of Motion - Physics',
          duration: '45 minutes',
          views: '25 Views',
        ),
      ],
    );
  }

  Widget buildHomeworkList() {
    return Column(
      children: [
        Center(child: Image.asset("assets/Images/homework.png")),
        const Text("No Homework Uploaded"),
      ],
    );
  }

  Widget buildNotesList() {
    return ListView(
      padding: EdgeInsets.all(MainApp.widthCal(16.0)),
      children: [
        buildNotesCard(
          title: 'Chapter 1: Chemistry',
          date: '12/11/24',
          subject: 'Chemistry',
        ),
        buildNotesCard(
          title: 'Exercise: Trigonometry',
          date: '02/11/24',
          subject: 'Mathematics',
        ),
      ],
    );
  }

  Widget buildVideoCard({
    required String title,
    required String duration,
    required String views,
  }) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainApp.widthCal(16)),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(MainApp.widthCal(16.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: MainApp.widthCal(90),
                  height: MainApp.heightCal(80),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(MainApp.widthCal(10)),
                  ),
                ),
                SizedBox(width: MainApp.widthCal(15)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: MainApp.widthCal(14),
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(height: MainApp.heightCal(3)),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 18),
                          SizedBox(width: MainApp.widthCal(4)),
                          Text(
                            '4.4',
                            style: GoogleFonts.mulish(
                              fontSize: MainApp.widthCal(11),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(width: MainApp.widthCal(16)),
                          Text(
                            duration,
                            style: GoogleFonts.poppins(
                              fontSize: MainApp.widthCal(11),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MainApp.heightCal(8)),
            Container(
              height: MainApp.heightCal(26),
              width: MainApp.widthCal(99),
              padding: EdgeInsets.symmetric(
                vertical: MainApp.heightCal(4),
                horizontal: MainApp.widthCal(8),
              ),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(MainApp.widthCal(8)),
              ),
              child: Text(
                textAlign: TextAlign.center,
                views,
                style: GoogleFonts.poppins(
                  fontSize: MainApp.widthCal(12),
                  fontWeight: FontWeight.w400,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotesCard({
    required String title,
    required String date,
    required String subject,
  }) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainApp.widthCal(16)),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(MainApp.widthCal(16.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: MainApp.widthCal(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MainApp.heightCal(4)),
                Text(
                  subject,
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: MainApp.widthCal(14)),
                ),
                SizedBox(height: MainApp.heightCal(8)),
                Text(
                  date,
                  style: TextStyle(
                      color: Colors.grey[500], fontSize: MainApp.widthCal(12)),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
                foregroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MainApp.widthCal(8)),
                ),
              ),
              child: Text(
                'View File',
                style: TextStyle(fontSize: MainApp.widthCal(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
