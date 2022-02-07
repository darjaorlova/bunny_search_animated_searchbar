import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final pink = const Color(0xFFFACCCC);
  final grey = const Color(0xFFF2F2F7);

  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: pink,
          focusedBorder: _border(pink),
          border: _border(grey),
          enabledBorder: _border(grey),
          hintText: 'Start brand search',
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderSide: BorderSide(width: 0.5, color: color),
    borderRadius: BorderRadius.circular(12),
  );
}