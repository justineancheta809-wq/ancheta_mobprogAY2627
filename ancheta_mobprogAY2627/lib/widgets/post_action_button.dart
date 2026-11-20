import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  final Color color;

  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(4)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: ScreenUtil().setSp(16),
              color: color,
            ),
            SizedBox(width: ScreenUtil().setWidth(4)),
            Text(
              label,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(12),
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    final activeColor = isLiked ? Colors.blue : Colors.grey;

    return PostActionButton(
      icon: isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
      label: 'Like',
      color: activeColor,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}

class CommentButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CommentButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return PostActionButton(
      icon: Icons.chat_bubble_outline,
      label: 'Comment',
      onPressed: onPressed,
    );
  }
}

class ShareButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ShareButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return PostActionButton(
      icon: Icons.redo,
      label: 'Share',
      onPressed: onPressed,
    );
  }
}