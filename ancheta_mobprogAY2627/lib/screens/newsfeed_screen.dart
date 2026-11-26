
import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  // 10 dynamic posts: number of likes, date, and whether it has an image.
  // hasImage: false -> no image
  // hasImage: true + imageUrl -> picture, hasImage: true only -> placeholder
  static const List<Map<String, dynamic>> posts = [
    {
      'userName': 'Justine Ancheta',
      'postContent': 'Kamusta',
      'numOfLikes': 100,
      'date': 'October 11',
      'hasImage': false,
      'avatarUrl': 'assets/images/mane.png',
    },
    {
      'userName': 'Justine Ancheta',
      'postContent': 'Kicking off the holiday season!',
      'numOfLikes': 200,
      'date': 'December 2',
      'hasImage': true,
      'avatarUrl': 'assets/images/mane.png',
      'imageUrl': 'assets/images/jm.jpg',
    },
    {
      'userName': 'Maria Santos',
      'postContent': 'Just finished my morning run!',
      'numOfLikes': 150,
      'date': 'October 12',
      'hasImage': true,
      'avatarUrl': 'assets/images/maria.png',
      'imageUrl': 'assets/images/mariarun.jpg',
    },
    {
      'userName': 'Juan Dela Cruz',
      'postContent': 'Coffee first before coding.',
      'numOfLikes': 87,
      'date': 'October 14',
      'hasImage': true,
      'avatarUrl': 'assets/images/ranz.png',
      'imageUrl': 'assets/images/coffee.png',
    },
    {
      'userName': 'Ana Reyes',
      'postContent': 'kaganda naman dito!',
      'numOfLikes': 320,
      'date': 'October 16',
      'hasImage': true,
      'imageUrl': 'assets/images/donzol.jpg',
    },
    {
      'userName': 'Genmar Bragais',
      'postContent': 'Finals week is coming. Good luck, everyone!',
      'numOfLikes': 64,
      'date': 'October 19',
      'hasImage': false,
      'avatarUrl': 'assets/images/genmar.png',
    },
    {
      'userName': 'Bea Villanueva',
      'postContent': 'Weekend vibes at the park.',
      'numOfLikes': 245,
      'date': 'October 22',
      'hasImage': true,
      'avatarUrl': 'assets/images/bea.png',
       'imageUrl': 'assets/images/korea.png',
    },
    {
      'userName': 'Miguel Torres',
      'postContent': 'Finally finished our mobile programming lab!',
      'numOfLikes': 410,
      'date': 'October 26',
      'hasImage': false,
      'avatarUrl': 'assets/images/rasc.png',
    },
    {
      'userName': 'Sofia Ramos',
      'postContent': 'Night owl mode on.',
      'numOfLikes': 178,
      'date': 'November 3',
      'hasImage': true,
      'imageUrl': 'assets/images/nightowl.png',
       'avatarUrl': 'assets/images/niana.png',
    },
    {
      'userName': 'arvin Garcia',
      'postContent': 'Happy birthday to my best friend!',
      'numOfLikes': 530,
      'date': 'November 9',
      'hasImage': true,
        'avatarUrl': 'assets/images/arvin.png',
      'imageUrl': 'assets/images/birthday.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return NewsFeedCard(
          userName: post['userName'] as String,
          postContent: post['postContent'] as String,
          numOfLikes: post['numOfLikes'] as int,
          date: post['date'] as String,
          hasImage: post['hasImage'] as bool,
          imageUrl: post['imageUrl'] as String?,
          avatarUrl: post['avatarUrl'] as String?,
        );
      },
    );
  }
}
