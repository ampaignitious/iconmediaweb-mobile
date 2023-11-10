import 'package:flutter/material.dart';

class NavbarMenuItem extends StatefulWidget {
  String?  navbarItemName;
  Icon? navbarIcon;
  Icon? dropdown;
  NavbarMenuItem({super.key, this.navbarItemName, this.navbarIcon, this.dropdown});

  @override
  State<NavbarMenuItem> createState() => _NavbarMenuItemState(this.navbarItemName, this.navbarIcon, this.dropdown);
}

class _NavbarMenuItemState extends State<NavbarMenuItem> {
    String?  navbarItemName;
    Icon? navbarIcon;
    Icon? dropdown;
    bool dropdown1 = false;
    bool dropdown2 =false;
    _NavbarMenuItemState(this.navbarItemName, this.navbarIcon, this.dropdown);

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: size.width*0.003),
                        child: ListTile(
                          title: Text("${navbarItemName}"),
                          leading: navbarIcon,
                          trailing: InkWell(
                            onTap: (){
                              print("Clicked");
                              if(navbarItemName=="Services"){
                                setState(() {
                                dropdown2 =!dropdown2;
                              });
                              }else if(navbarItemName =="About Us"){
                                setState(() {
                                dropdown1 =!dropdown1;
                              });
                              }
                              
                            },
                            child: dropdown!=null?dropdown:Text("")),
                        ),
                      ),
                      // Divider()
                    ],
                  ),
                )
              ],
            ),
            // dropdown for about us 
             dropdown1==true?Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height*0.04,
                  width: size.width*0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width*0.008, top: size.height*0.004),
                    child: Row(
                      children: [
                        Icon(Icons.visibility_outlined, size: size.width*0.012,),
                        SizedBox(width: size.width*0.008,),
                        Text("Vision"),
                      ],
                    ),
                  ),),
                SizedBox(height: size.height*0.01,),
                Container(
                  height: size.height*0.04,
                  width: size.width*0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width*0.008, top: size.height*0.004),
                    child: Row(
                      children: [
                        Icon(Icons.track_changes_rounded, size: size.width*0.012,),
                        SizedBox(width: size.width*0.008,),
                        Text("Goal"),
                      ],
                    ),
                  ),),
                SizedBox(height: size.height*0.01,),
                Container(
                  height: size.height*0.04,
                  width: size.width*0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width*0.008, top: size.height*0.004),
                    child: Row(
                      children: [
                        Icon(Icons.add_chart_rounded, size: size.width*0.012,),
                        SizedBox(width: size.width*0.008,),
                        Text("Mission"),
                      ],
                    ),
                  ),),
                SizedBox(height: size.height*0.01,),
                Container(
                  height: size.height*0.04,
                  width: size.width*0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width*0.008),
                    child: Row(
                      children: [
                        Icon(Icons.theater_comedy_sharp, size: size.width*0.012,),
                        SizedBox(width: size.width*0.008,),
                        Text("Team"),
                      ],
                    ),
                  ),),
                  SizedBox(height: size.height*0.009,)
              ],
            ):Container(),

            // dropdown for services
              dropdown2==true?Padding(
                padding: EdgeInsets.only(left: size.width*0.04),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height*0.04,
                   width: size.width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width*0.008),
                      child: Row(
                        children: [
                          Icon(Icons.phone_android_outlined, size: size.width*0.012,),
                          SizedBox(width: size.width*0.008,),
                          Text("Mobile development"),
                        ],
                      ),
                    ),
                    ),
                  SizedBox(height: size.height*0.01,),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width*0.008),
                      child: Row(
                        children: [
                          Icon(Icons.web, size: size.width*0.012,),
                          SizedBox(width: size.width*0.008,),
                          Text("Web development"),
                        ],
                      ),
                    ),
                    ),
                  SizedBox(height: size.height*0.01,),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width*0.008),
                      child: Row(
                        children: [
                          Icon(Icons.design_services, size: size.width*0.012,),
                          SizedBox(width: size.width*0.008,),
                          Text("Graphics designing"),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: size.height*0.01,),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width*0.008),
                      child: Row(
                        children: [
                          Icon(Icons.sensors, size: size.width*0.012,),
                          SizedBox(width: size.width*0.008,),
                          Text("Sensor programming"),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: size.height*0.01,),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width*0.008),
                      child: Row(
                        children: [
                          Icon(Icons.webhook_outlined, size: size.width*0.012,),
                          SizedBox(width: size.width*0.008,),
                          Text("ebusiness services",),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: size.height*0.009,)
                ],
                          ),
              ):Container(),
      ],
    );
  }
}