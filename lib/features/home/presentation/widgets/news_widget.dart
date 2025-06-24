import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String category;
  final String time;
  final Function onTap;
  const NewsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.category,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.network(
              image,
              width: 100,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                  height: 80,
                  width: 100,
                  child: Center(child: Icon(Icons.error))),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text('By $author', style: TextStyle(color: Colors.grey)),
                  Row(
                    children: [
                      Text(category,
                          style: TextStyle(color: Colors.blue, fontSize: 12)),
                      Text('  •  $time',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
