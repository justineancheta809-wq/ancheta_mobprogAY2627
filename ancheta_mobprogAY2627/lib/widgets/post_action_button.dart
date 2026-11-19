import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

/// Reusable widget-based action button (Comment, Share, ...).
class PostActionButton extends StatelessWidget {
  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.color = FB_DARK_PRIMARY,
    this.onPressed,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed ?? () {},
      icon: Icon(icon, color: color),
      label: Text(
        label,
        style: TextStyle(fontSize: ScreenUtil().setSp(12), color: color),
      ),
    );
  }
}

/// Like button widget: shows the number of likes and toggles when pressed.
class LikeButton extends StatefulWidget {
  const LikeButton({super.key, this.numOfLikes = 0});

  final int numOfLikes;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return PostActionButton(
      icon: Icons.thumb_up,
      label: (widget.numOfLikes + (isLiked ? 1 : 0)).toString(),
      color: isLiked ? FB_PRIMARY : FB_DARK_PRIMARY,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}