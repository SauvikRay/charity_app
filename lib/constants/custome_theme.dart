import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTheme {
  BuildContext? context;


  static ThemeData get mainTheme {
    return ThemeData(
      primaryColor:const Color(0xFFEA12B9) ,
       scaffoldBackgroundColor: const Color(0xFF214C8E),
      fontFamily: 'Poppins',
      textTheme: 
         TextTheme(
              headline1: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              subtitle1: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w100,
                color: Colors.white,
                fontStyle: FontStyle.normal,
              ),
            ),

        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
          iconTheme: IconThemeData(color: Colors.purpleAccent,),
          
          ),
          
          
        
      //   buttonTheme: ButtonThemeData(
          
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      //   buttonColor:const Color(0xFF6B34BE), 
      //   height: 60,
      //   minWidth: double.infinity,
      // ),
      
    
    );
  }
  
}