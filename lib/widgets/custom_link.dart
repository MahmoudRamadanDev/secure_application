import 'package:flutter/material.dart';

class CustomLink extends StatelessWidget {
  const CustomLink({super.key, required this.textLink, required this.onTap});
  final String textLink ;
 final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text(
          textLink,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
