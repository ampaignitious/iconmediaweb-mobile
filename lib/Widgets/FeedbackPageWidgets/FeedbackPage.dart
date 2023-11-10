import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.006,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width*0.009),
          height: size.height*0.07,
          width: size.width*0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Color and opacity of the shadow
                    blurRadius: 10.0, // Spread of the shadow
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],
          ),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: size.width*0.02, top: size.height*0.012, right: size.width*0.03, ),
                  child: Text("Some of customer comments", style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.01),
                    child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      label: Text("Filter by date"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),  // Border for the email field
                    ),
                                  ),
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
          child: Divider(),
        ),
        //  list of available 
        Container(
          height: size.height * 0.75,
          width: size.width*0.7,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                height: size.height * 0.25,
                width: size.width*0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Color and opacity of the shadow
                          blurRadius: 10.0, // Spread of the shadow
                          offset: Offset(0, 3), // Offset of the shadow
                        ),
                      ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width*0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/image1.jpg"))
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height*0.01,),
                        Row(
                          children: [
                            Text("Name:", style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width*0.012
                            ),),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.008),
                              child: Text("Ampa Ignitious", style: GoogleFonts.lato(
                                fontSize: size.width*0.012
                              ),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("Comments:", style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.008, top: size.height*0.03),
                              child: Text("Everything switch does to facilitate communication switches maintain a MAC \n address table ie ports and address fields are included .............................", style: GoogleFonts.lato(
                                fontSize: size.width*0.011
                              ),),
                            )
                          ],
                        ),
                        SizedBox(height: size.height*0.022,),
                        //  number of stars
                        Row(
                          children: [
                            Icon(Icons.star,
                            size: size.width*0.014,
                            ),
                            Icon(Icons.star,
                            size: size.width*0.014,
                            ),
                            Icon(Icons.star,
                            size: size.width*0.014,
                            ),
                            Icon(Icons.star,
                            size: size.width*0.014,
                            ),
                            Icon(Icons.star,
                            size: size.width*0.014,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.08),
                              child: Text("Date: 2/11/2023", style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.08),
                              child: Text("Time: 2:56pm", style: GoogleFonts.lato(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height*0.01,)
              ],
            );
          }) ,
          ),
      ],
    );
  }
}