import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMenu extends StatefulWidget {
  const AppBarMenu({super.key});

  @override
  State<AppBarMenu> createState() => _AppBarMenuState();
}

class _AppBarMenuState extends State<AppBarMenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container(
            margin: EdgeInsets.symmetric(horizontal: size.width*0.008),
            height: size.height*0.1,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Color and opacity of the shadow
                      blurRadius: 10.0, // Spread of the shadow
                      offset: Offset(0, 4), // Offset of the shadow
                    ),
                  ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03),
                  child: Row(
                    children: [
                      Center(
                        child: Text("Hi, welcome to iconmediaUg", style: GoogleFonts.lato(
                          fontSize: size.width*0.012,
                          letterSpacing: 0.5,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      SizedBox(width: size.width*0.6,),
                      Text("120", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: size.width*0.004,),
                      Icon(Icons.notification_add,
                      size: size.width*0.015,
                       color: Colors.red,)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height*0.003, bottom: size.height*0.003, right: size.width*0.03),
                  child: CircleAvatar(
                    radius: size.width*0.02,
                    backgroundColor: Colors.black.withOpacity(0.6),
                  ),
                )
              ],
            ),
          );
  }
}