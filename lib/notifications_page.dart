import 'package:flutter/material.dart';
import 'package:flutter_practical/Data/data.dart';
import 'package:flutter_practical/notification_tile.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Notifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        const SizedBox(height: 10), 
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NotificationTile(model: notifications[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

