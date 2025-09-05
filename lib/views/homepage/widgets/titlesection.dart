import 'package:dictionaryapp/views/account/signin.dart';
import 'package:flutter/material.dart';

class Titlesection extends StatelessWidget {
  const Titlesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'dictionary',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_add)),
            IconButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signin()),
                );
              },
              icon: Icon(Icons.speaker_phone_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
