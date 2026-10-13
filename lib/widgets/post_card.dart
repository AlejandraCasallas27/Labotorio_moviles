
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String username;
  final String initials;
  final String description;
  final IconData imageIcon;
  final Color imageColor;

  const PostCard({
    super.key,
    required this.username,
    required this.initials,
    required this.description,
    required this.imageIcon,
    required this.imageColor,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    String profileImage = widget.initials == 'LM'
        ? 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150'
        : 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150';

    String postImage = widget.initials == 'LM'
        ? 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=800'
        : 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800';

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x16000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: widget.imageColor,
                  backgroundImage: NetworkImage(profileImage),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              postImage,
              height: 210,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 210,
                  color: widget.imageColor,
                  child: Center(
                    child: Icon(
                      widget.imageIcon,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.description),
                const SizedBox(height: 12),

                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      icon: Icon(
                        isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: isLiked
                            ? Colors.red
                            : Colors.grey,
                      ),
                    ),
                    Text(isLiked ? 'Te gusta' : 'Me gusta'),

                    const SizedBox(width: 12),

                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Sección de comentarios',
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.mode_comment_outlined,
                      ),
                    ),
                    const Text('Comentar'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
