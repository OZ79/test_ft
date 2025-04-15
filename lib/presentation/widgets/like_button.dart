import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  final ValueChanged<bool> onTap;
  const LikeButton({
    super.key,
    required this.isLiked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(!isLiked);
      },
      child: Icon(
        size: 25.0,
        isLiked ? Icons.favorite : Icons.favorite_outline,
        color: Colors.yellow,
      ),
    );
  }
}
