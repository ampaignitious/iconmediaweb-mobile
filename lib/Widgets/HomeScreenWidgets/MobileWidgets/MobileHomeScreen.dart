import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  bool dropdownState =false;
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width<1000? SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height*0.02,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: size.width*0.009),
                            height: size.height*0.08,
                            width: double.infinity,
                            decoration: BoxDecoration(
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
                                Icon(Icons.menu,
                                size: size.width*0.13,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width*0.06),
                                  child: Text("Hi, welcome to iconmediaUg"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: size.width*0.03),
                                  child: CircleAvatar(),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: size.height*0.01,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: size.width*0.009),
                            height: size.height*0.08,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
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
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: size.width*0.03),
                                  child: Text("Summary stats", style: GoogleFonts.lato(
                                    fontSize: size.width*0.05,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: size.width*0.46),
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        dropdownState =!dropdownState;
                                      });
                                    },
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: size.width*0.12,
                                      ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: size.height*0.01,),
                          dropdownState == true?Padding(
                            padding: EdgeInsets.symmetric(horizontal: size.width*0.006),
                            child: Column(
                            children: [
                                // first stat display
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                            height: size.height*0.12,
                            width:size.width*0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink
                            ),
                            child: Padding(
                              padding:EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height*0.1,
                                    width: size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.date_range,
                                    size: size.width*0.09,
                                    color: Colors.white,
                                    ),
                                  ),
                                  // 
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width*0.06),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("123,000", style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: size.width*0.035,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("Appointments", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width*0.015,
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            //  second stat display
                           Container(
                            height: size.height*0.12,
                            width:size.width*0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange
                            ),
                            child: Padding(
                              padding:EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height*0.1,
                                    width: size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.date_range,
                                    size: size.width*0.09,
                                    color: Colors.white,
                                    ),
                                  ),
                                  // 
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width*0.06),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("034", style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: size.width*0.035,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("Web applications", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width*0.015,
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            // 
                              ],
                            ),
                            SizedBox(height: size.height*0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                            height: size.height*0.12,
                            width:size.width*0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink
                            ),
                            child: Padding(
                              padding:EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height*0.1,
                                    width: size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.date_range,
                                    size: size.width*0.09,
                                    color: Colors.white,
                                    ),
                                  ),
                                  // 
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width*0.06),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("123,000", style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: size.width*0.035,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("Appointments", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width*0.015,
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            //  second stat display
                           Container(
                            height: size.height*0.12,
                            width:size.width*0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange
                            ),
                            child: Padding(
                              padding:EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height*0.1,
                                    width: size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.4),
                                      shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.date_range,
                                    size: size.width*0.09,
                                    color: Colors.white,
                                    ),
                                  ),
                                  // 
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width*0.06),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("034", style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: size.width*0.035,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("Web applications", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width*0.015,
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),
                            // 
                              ],
                            ),
                            
                            SizedBox(height: size.height*0.003,),
                            // 
                              ],
                            ),
                          ):Container(),
                       
                      
                      ],),
      ),
    ):Container();
  }
}