import 'package:flutter/material.dart';

class NavbarItemSeperator extends StatefulWidget {
  const NavbarItemSeperator({super.key});

  @override
  State<NavbarItemSeperator> createState() => _NavbarItemSeperatorState();
}

class _NavbarItemSeperatorState extends State<NavbarItemSeperator> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: Container(
          height: 0.08,
          width: size.width*0.16,
          decoration: BoxDecoration(
            color: Colors.black
          ),
        ),
      );
  }
}