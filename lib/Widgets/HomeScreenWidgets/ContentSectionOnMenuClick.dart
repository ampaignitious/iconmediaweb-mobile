import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xdevs/Widgets/FeedbackPageWidgets/FeedbackPage.dart';

class ContentSectionOnMenuClick extends StatefulWidget {
  String? selectionName;
  ContentSectionOnMenuClick({super.key, this.selectionName});

  @override
  State<ContentSectionOnMenuClick> createState() => _ContentSectionOnMenuClickState(this.selectionName);
}

class _ContentSectionOnMenuClickState extends State<ContentSectionOnMenuClick> {
  String? selectionName;
  _ContentSectionOnMenuClickState(this.selectionName);
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: 8,
      child: Container(
              height: size.height * 0.88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // container color
                // color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0), // Color and opacity of the shadow
                    blurRadius: 10.0, // Spread of the shadow
                    offset: Offset(0, 4), // Offset of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                selectionName =="Feedbacks"?FeedbackPage():Container(),
              ],),
              ),
    );
  }
}