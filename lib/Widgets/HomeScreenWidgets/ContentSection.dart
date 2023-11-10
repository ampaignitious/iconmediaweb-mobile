import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/ContentSectionStatsDisplay.dart';


class ContentSection extends StatefulWidget {
  const ContentSection({super.key});

  @override
  State<ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  @override
  List appNames =['Flutter','Laravel','PHP','Firebase'];
  List imageLinks =['assets/images/language3.png','assets/images/language2.png','assets/images/language3.png','assets/images/language1.png'];
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width<1000?ContentSectionStatsDisplay():Expanded(
              flex: size.width<1000? 10:8,
              child: Column(
                children: [
                   Container(
                    height: size.height * 0.74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Color and opacity of the shadow
                          blurRadius: 10.0, // Spread of the shadow
                          offset: Offset(0, 4), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height*0.012,),
                        Padding(
                          padding:EdgeInsets.only(left: size.width*0.01),
                          child: Text("Summary stats", style: GoogleFonts.lato(
                            fontSize: size.width*0.011,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink
                          ),),
                        ),
                        SizedBox(height: size.height*0.012,),
                        //  stat display
                        ContentSectionStatsDisplay(),
                        // 
                        SizedBox(height: size.height*0.008,),
                        Divider(thickness: 0.7,),
                        // sample display
                       Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Some of area of expertise", style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width*0.01,
                                        color: Colors.black),),
                                       Padding(
                                         padding: EdgeInsets.only(left: size.width*0.052),
                                         child: Text("See all", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width*0.009,
                                          color: Colors.pink),),
                                       )
                                    ],
                                  ),
                                  // 
                                  SizedBox(height: size.height*0.016,),
                                   Container(
                                    height: size.height*0.48,
                                    width: size.width*0.22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:Color.fromARGB(255, 251, 244, 244),
                                      boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 26, 13, 13).withOpacity(0.1), // Color and opacity of the shadow
                                        blurRadius: 10.0, // Spread of the shadow
                                        offset: Offset(0, 4), // Offset of the shadow
                                      ),
                                      BoxShadow(
                                        color: Color.fromARGB(255, 26, 13, 13).withOpacity(0.1), // Color and opacity of the shadow
                                        blurRadius: 10.0, // Spread of the shadow
                                        offset: Offset(0, 4), // Offset of the shadow
                                      ),
                                    ],
                                    ),
                                    child: ListView.builder(
                                      // scrollDirection: Axis.vertical,
                                      itemCount: appNames.length,
                                      itemBuilder: (context, index){
                                      return Column(
                                        children: [
                                          SizedBox(height: size.height*0.004,),
                                          Container(
                                            margin: EdgeInsets.symmetric(vertical: size.height*0.004),
                                            height: size.height*0.34,
                                            width: size.width*0.2,
                                            decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(10),
                                              color: Colors.white
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: size.height*0.014,),
                                                Container(
                                                 height: size.height*0.24,
                                                 width: size.width*0.19,
                                                 decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Color.fromARGB(255, 251, 244, 244),
                                                  image: DecorationImage(image: AssetImage(imageLinks[index]))
                                                 ),
                                                ),
                                                SizedBox(height: size.height*0.012,),
                                                // 
                                                Center(
                                                  child: Container(
                                                    height: size.height*0.06,
                                                    width: size.width*0.18,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: Colors.purple.withGreen(2)
                                                    ),
                                                    child:  
                                                        Center(
                                                          child: Text("App name: ${appNames[index]}", style: GoogleFonts.lato(
                                                            fontSize: size.width*0.008,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                          ),),
                                                        ),
                                                  )
                                                   
                                                  // 
                                                )
                                                
                                              ],
                                            ),
                                          ), 
                                          SizedBox(height: size.height*0.004,),
                                        ],
                                      );
                                    }),
                                  )
                                  // 
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: size.height*0.04,),
                                  // 
                                      Container(
                                        margin: EdgeInsets.only(left: size.width*0.0018),
                                        height: size.height*0.5,
                                        width: size.width*0.43,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color:Color.fromARGB(255, 251, 244, 244),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: size.height*0.008,),
                                           Padding(
                                             padding: EdgeInsets.only(left: size.width*0.004),
                                             child: Text("Some of the available mobile applications in production", style: GoogleFonts.lato(
                                              color: Colors.purple,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.width*0.009
                                        ,),
                                           )
                                      ),],),
                                      )
                                      // 
                                ],
                              ),
                            ],
                          ),
                        )
                        
                      ],
                      
                    ),
                  ),
                  // bottom content section
                   Container(
                    margin: EdgeInsets.only(top: size.height*0.009),
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Color and opacity of the shadow
                          blurRadius: 10.0, // Spread of the shadow
                          offset: Offset(0, 4), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}