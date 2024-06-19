// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        focusColor: Colors.grey,
        filled: true,
        fillColor: Styles.greyColor,
        hintStyle: const TextStyle(color: Colors.black54, fontSize: 12),
        hintText: "Search here",
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xff5F5F5F),
          size: 20,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
