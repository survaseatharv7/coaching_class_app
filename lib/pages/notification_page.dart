import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Card(
            color: Colors.white,
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Colors.blue),
              title: Text('Today Class Timing',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Morning 8 am to 11am'),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
