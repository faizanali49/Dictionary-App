import 'package:dictionaryapp/themes/styles.dart';
import 'package:dictionaryapp/themes/textexample.dart';
import 'package:flutter/material.dart';

class Readingsection extends StatelessWidget {
  const Readingsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 500,
      padding: EdgeInsets.only(left: 5, right: 5),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Customcolors.primary.withAlpha(40),
        // border: Border.all(color: Colors.black, width: 2.0),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SelectableText(
                'Title: ',
                // cursorColor: Colors.green,
                // showCursor: true,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: SelectableText(Textexample.title),
            ),
          ],
        ),
      ),
    );
  }
}
