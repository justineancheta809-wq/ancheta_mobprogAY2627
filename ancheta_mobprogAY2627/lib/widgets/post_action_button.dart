import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Reusable widget-based action button (Comment, Share, ...).
class PostActionButton extends StatelessWidget {
  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.color = Colors.grey,
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

/// Like button widget that toggles between outlined and filled.
class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return PostActionButton(
      icon: isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
      label: 'Like',
      color: isLiked ? Colors.blue : Colors.grey,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}
