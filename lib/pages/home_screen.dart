import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:workshop/widgets/starter_app_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page',
      style: TextStyle(
        color: AppColor.white
      ),
      ),
      backgroundColor: AppColor.black,
      ),
      backgroundColor: AppColor.bg,
      body: const SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StarterAppItem(imagePath: "OIP",title: "Lighter App",routesName: RoutesName.lighterApp,),
          StarterAppItem(imagePath: "basket",title: "Basketball App",routesName: RoutesName.basketApp,),
          StarterAppItem(imagePath: "Calculator",title: "Calculator App",routesName: RoutesName.calculatorApp,),
          StarterAppItem(imagePath: "xo2",title: "Tic Tac App",routesName: RoutesName.xoApp,),
          // StarterAppItem(),
          // StarterAppItem(),
          // StarterAppItem(),
        ],
      ),
      )),
    );
  }
}