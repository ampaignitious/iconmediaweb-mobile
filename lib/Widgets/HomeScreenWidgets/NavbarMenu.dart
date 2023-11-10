import 'package:flutter/material.dart';
import 'package:xdevs/Widgets/HomeScreen.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/NavbarItemSeperator.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/NavbarMenuItem.dart';

class NavbarMenu extends StatefulWidget {
  const NavbarMenu({super.key});

  @override
  State<NavbarMenu> createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
              flex: size.width<1000? 0:3,
              child: Container(
                height: size.height * 0.88,
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
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.018),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: size.width*0.01),
                        height: 0.3,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 251, 244, 244),
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: size.height*0.02,),
                                // menu item
                                InkWell(
                                  onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                    return HomeScreen(serviceName: "Home",);
                                  }));
                                },
                                child: NavbarMenuItem(navbarItemName: "Home", navbarIcon: Icon(Icons.home),)),
                                // SizedBox(height: size.height*0.007,),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "Services", navbarIcon: Icon(Icons.medical_services_outlined,), dropdown: Icon(Icons.arrow_circle_down_sharp),),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "About Us", navbarIcon: Icon(Icons.perm_contact_calendar_rounded), dropdown: Icon(Icons.arrow_circle_down_sharp),),
                                NavbarItemSeperator(),
                                InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                    return HomeScreen(serviceName: "Feedbacks",);
                                  }));
                                },
                                child: NavbarMenuItem(navbarItemName: "Feedbacks", navbarIcon: Icon(Icons.feed_outlined),),),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "Achievements", navbarIcon: Icon(Icons.graphic_eq_sharp),),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "Settings", navbarIcon: Icon(Icons.settings),),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "Contacts", navbarIcon: Icon(Icons.supervised_user_circle_rounded),),
                                NavbarItemSeperator(),
                                NavbarItemSeperator(),
                                NavbarMenuItem(navbarItemName: "Logout", navbarIcon: Icon(Icons.logout),),
                                // 
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.03,),
                  ],
                ),
              ),
            );
  }
}