import 'package:flutter/material.dart';

class StarterAppItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String routesName;
  const StarterAppItem({super.key,required this.imagePath,required this.title,required this.routesName});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Card(
        
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/$imagePath.jpeg',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            ),
             Text(title,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),),
             // ignore: prefer_const_constructors
             IconButton(
              
              onPressed: () {
                Navigator.pushNamed(context, routesName);
              },
              iconSize: 50,
              color: Colors.blue,
              icon:const Icon(
                  Icons.arrow_right,
                )
            ),
          ],
        ),
      
      ),
    );
  }
}