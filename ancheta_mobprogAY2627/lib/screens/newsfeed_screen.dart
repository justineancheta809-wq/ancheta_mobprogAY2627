
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Lebron James',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
          avatarUrl: 'assets/images/mane.png',
        ),
        NewsFeedCard(
          userName: 'Justine Ancheta',
          postContent: 'My good owl!',
          numOfLikes: 200,
          date: 'December 2',
          hasImage: true,
          avatarUrl: 'assets/images/mane.png',
         imageUrl: 'assets/images/owl.jpeg',
        ),
      ],
    );
  }
}
