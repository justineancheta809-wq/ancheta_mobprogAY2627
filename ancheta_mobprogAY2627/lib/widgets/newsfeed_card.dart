import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';
import 'user_avatar.dart';
import 'post_action_button.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? imageUrl;
  final String? avatarUrl;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.imageUrl,
    this.avatarUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAvatar(
                  imageUrl: avatarUrl,
                  radius: ScreenUtil().setSp(16),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            hasImage == true
                ? (imageUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(
                          ScreenUtil().setSp(10),
                        ),
                        child: Image.asset(
                          imageUrl!,
                          width: double.infinity,
                          height: ScreenUtil().setHeight(200),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                              width: double.infinity,
                              height: ScreenUtil().setHeight(200),
                              child: const Placeholder(),
                            );
                          },
                        ),
                      )
                    : const Placeholder())
                : SizedBox(
                    height: ScreenUtil().setHeight(1),
                  ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // Widget-based Like / Comment / Share buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(numOfLikes: numOfLikes),
                const PostActionButton(
                  icon: Icons.comment,
                  label: 'Comment',
                ),
                const PostActionButton(
                  icon: Icons.redo,
                  label: 'Share',
                ),
              ],
            ),
            const Divider(),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    text: 'Most relevant',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                    size: ScreenUtil().setSp(18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                UserAvatar(
                  imageUrl: avatarUrl,
                  radius: ScreenUtil().setSp(12),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setSp(10),
                    ),
                    height: ScreenUtil().setHeight(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(10)),
                      ),
                    ),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'Write a comment...',
                          fontSize: ScreenUtil().setSp(11),
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        Icon(Icons.gif_box_outlined,
                            color: Colors.grey, size: ScreenUtil().setSp(14)),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        Icon(Icons.emoji_emotions_outlined,
                            color: Colors.grey, size: ScreenUtil().setSp(14)),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        Icon(Icons.photo_camera_outlined,
                            color: Colors.grey, size: ScreenUtil().setSp(14)),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        Icon(Icons.sticky_note_2_outlined,
                            color: Colors.grey, size: ScreenUtil().setSp(14)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}