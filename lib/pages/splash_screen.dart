import 'package:flutter/material.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),(){
       if (mounted) {
        Navigator.pushNamed(context, RoutesName.home);
       }

    }  
    );
    super.initState();
  }
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2786DB),
      body: Center(
        child: Text("AIO APP",style: GoogleFonts.italiana(
          textStyle:const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 60,
          
        ),
         
          
        ),)
      ),
    );
  }
}