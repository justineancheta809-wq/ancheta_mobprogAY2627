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
  final int numOfComments;
  final int numOfShares;
  final bool hasImage;
  final String? imageUrl;
  final String? avatarUrl;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.numOfComments = 0,
    this.numOfShares = 0,
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
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
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
                          alignment: Alignment.topCenter,
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
            SizedBox(height: ScreenUtil().setHeight(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: ScreenUtil().setSp(13),
                      color: Colors.blue,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4)),
                    CustomText(
                      text: '$numOfLikes',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey[700]!,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: '$numOfComments Comments',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey[700]!,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    CustomText(
                      text: '$numOfShares Shares',
                      fontSize: ScreenUtil().setSp(12),
                      color: Colors.grey[700]!,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                LikeButton(),
                CommentButton(),
                ShareButton(),
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