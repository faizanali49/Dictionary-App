import 'package:flutter/material.dart';

class BookmarkView extends StatelessWidget {
  final String? userId;
  const BookmarkView({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookmarks')),
      body: Column(
        children: [
          Text(userId ?? ''),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Example count
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: Image.asset(
                      'assets/images/dic-logo.png',
                      width: 50,
                      height: 50,
                    ),
                    title: Text('List Item ${index + 1}'),
                    subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.',
                    ),
                    trailing: Icon(Icons.bookmark),
                    isThreeLine: true,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
