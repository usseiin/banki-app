import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            focusColor: Colors.green,
            icon: const Icon(Icons.search),
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}
