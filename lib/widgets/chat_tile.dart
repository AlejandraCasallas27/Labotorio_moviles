
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String initials;
  final int unread;
  final Color avatarColor;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.initials,
    required this.unread,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    String profileImage;

    if (initials == 'AG') {
      profileImage =
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150';
    } else if (initials == 'PL') {
      profileImage =
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150';
    } else if (initials == 'MT') {
      profileImage =
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=150';
    } else if (initials == 'JP') {
      profileImage =
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=150';
    } else {
      profileImage =
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=150';
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: avatarColor,
            backgroundImage: NetworkImage(profileImage),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),

              if (unread > 0)
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    color: Color(0xFF6750A4),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$unread',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
