import 'package:flutter/material.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/MobileWidgets/MobileHomeScreen.dart';

class ContentSectionStatsDisplay extends StatefulWidget {
  const ContentSectionStatsDisplay({super.key});

  @override
  State<ContentSectionStatsDisplay> createState() => _ContentSectionStatsDisplayState();
}

class _ContentSectionStatsDisplayState extends State<ContentSectionStatsDisplay> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Padding(
      padding: size.width<1000?EdgeInsets.symmetric(horizontal: size.width*0.003) : EdgeInsets.symmetric(horizontal: size.width*0.03),
      child: size.width<1000?MobileHomeScreen(): Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first stat display
                  Container(
                    height: size.height*0.11,
                    width: size.width*0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: size.height*0.07,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.date_range,
                          color: Colors.white,
                          ),
                        ),
                        // 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("123,000", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.01,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("Appointments", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.006,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  //  
                  //  second stat display
                  Container(
                    height: size.height*0.11,
                    width: size.width*0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: size.height*0.07,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.edit_document,
                          color: Colors.white,
                          ),
                        ),
                        // 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("349", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.01,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("Total designs", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.006,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  // 
                  // third stat display
                  Container(
                    height: size.height*0.11,
                    width: size.width*0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: size.height*0.07,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.mobile_friendly,
                          color: Colors.white,
                          ),
                        ),
                        // 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("540", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.01,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("Mobile apps", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.006,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  // 
                  // fourth stat display
                  Container(
                    height: size.height*0.11,
                    width: size.width*0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlue
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: size.height*0.07,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.web_rounded,
                          color: Colors.white,
                          ),
                        ),
                        // 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("340", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.01,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("Total web apps", style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*0.006,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  // 
                  ],
              ),
    );
  }
}