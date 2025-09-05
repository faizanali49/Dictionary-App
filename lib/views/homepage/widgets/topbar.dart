import 'package:dictionaryapp/views/bookmark/bookmark_view.dart';
import 'package:flutter/material.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        Text('Dictionary', style: TextStyle(color: Colors.white, fontSize: 24)),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookmarkView(userId: 'faizan ali'),
              ),
            );
          },
          icon: Icon(Icons.bookmark_border, color: Colors.white),
        ),
      ],
    );
  }
}
