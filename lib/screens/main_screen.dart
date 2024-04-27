import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  } 
}

class MainScreenState extends State<MainScreen> {
  final TextEditingController _notificationController = TextEditingController();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void _sendNotification(String message) {
    // Send notification logic here
    // This could involve calling an API to send the notification using FCM
    // For simplicity, we'll just print the message here
    print('Sending notification: $message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _notificationController,
              decoration: const InputDecoration(labelText: 'Notification Message'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String message = _notificationController.text;
                _sendNotification(message);
              },
              child: const Text('Send Notification'),
            ),
          ],
        ),
      ),
    );
  }
}