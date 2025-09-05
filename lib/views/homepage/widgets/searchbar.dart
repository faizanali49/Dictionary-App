import 'package:flutter/material.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for a word...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}
