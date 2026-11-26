import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // 20 notifications (dynamic values: name, post date, description)
  final List<Map<String, String>> notifications = [
    {'name': 'Maria Santos', 'post': 'October 11', 'description': 'liked your post'},
    {'name': 'Juan Dela Cruz', 'post': 'October 12', 'description': 'commented on your post'},
    {'name': 'Ana Reyes', 'post': 'October 14', 'description': 'shared your post'},
    {'name': 'Carlo Mendoza', 'post': 'October 15', 'description': 'liked your photo'},
    {'name': 'Bea Villanueva', 'post': 'October 18', 'description': 'tagged you in a post'},
    {'name': 'Miguel Torres', 'post': 'October 20', 'description': 'commented on your photo'},
    {'name': 'Sofia Ramos', 'post': 'October 22', 'description': 'liked your comment'},
    {'name': 'Paolo Garcia', 'post': 'October 25', 'description': 'shared your photo'},
    {'name': 'Kyla Navarro', 'post': 'October 28', 'description': 'liked your post'},
    {'name': 'Rafael Cruz', 'post': 'November 1', 'description': 'mentioned you in a comment'},
    {'name': 'Isabel Lopez', 'post': 'November 3', 'description': 'liked your post'},
    {'name': 'Daniel Flores', 'post': 'November 5', 'description': 'commented on your post'},
    {'name': 'Camille Bautista', 'post': 'November 8', 'description': 'shared your post'},
    {'name': 'Gabriel Aquino', 'post': 'November 10', 'description': 'liked your photo'},
    {'name': 'Nicole Castillo', 'post': 'November 13', 'description': 'tagged you in a photo'},
    {'name': 'Joshua Pascual', 'post': 'November 16', 'description': 'liked your comment'},
    {'name': 'Angela Domingo', 'post': 'November 19', 'description': 'commented on your photo'},
    {'name': 'Mark Soriano', 'post': 'November 22', 'description': 'liked your post'},
    {'name': 'Trisha Valdez', 'post': 'November 25', 'description': 'shared your photo'},
    {'name': 'Lance Ocampo', 'post': 'November 28', 'description': 'mentioned you in a post'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Column(
            children: [
              notif.Notification(
                name: item['name']!,
                post: item['post']!,
                description: item['description']!,
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
