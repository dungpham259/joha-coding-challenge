import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CirleAvatar extends StatelessWidget {
  const CirleAvatar({super.key, required this.avatarUrl});

  final String avatarUrl;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green,
      radius: 64,
      child: CircleAvatar(
        radius: 60,
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: avatarUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
