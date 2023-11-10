import 'package:flutter/material.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/AppBarMenu.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/ContentSection.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/ContentSectionOnMenuClick.dart';
import 'package:xdevs/Widgets/HomeScreenWidgets/NavbarMenu.dart';

class HomeScreen extends StatefulWidget {
  String? serviceName;
  HomeScreen({super.key, this.serviceName});

  @override
  State<HomeScreen> createState() => _HomeScreenState(this.serviceName);
}

class _HomeScreenState extends State<HomeScreen> {
  String? serviceName;
   _HomeScreenState(this.serviceName);
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 249, 238),
      body: size.width<1000?SingleChildScrollView(
        child: Column(
          children: [
            _buildSwitchContent("${serviceName}"),
          ],
        ),
      ) :Column(
        children: [
          SizedBox(height: size.height*0.008,),
          // app bar
          size.width <1000?Container():AppBarMenu(),
          SizedBox(height: size.height*0.008,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: size.width*0.004,),
              // navigation bar
              size.width < 1000?Container():NavbarMenu(),
              //
              SizedBox(width: size.width*0.008,),
              //  content section
             _buildSwitchContent("${serviceName}"),
              // ContentSection(),
              // 
              SizedBox(width: size.width*0.007,),

            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      shape: CircleBorder(),
      child: Icon(Icons.message),
      ),
    );
  }
  
  Widget _buildSwitchContent(String serviceName) {
    // Use serviceName to determine which widget to display
    switch (serviceName) {
      case 'service':
        return Container(
          // Your service container content
          color: Colors.blue,
          height: 100,
          width: 100,
        );
      case 'Feedbacks':
        return ContentSectionOnMenuClick(selectionName: "Feedbacks",);
      case 'Home':
        return ContentSection(); 
      default:
        return ContentSection(); // Default content
    }
  }
}
 
 