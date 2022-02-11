import 'package:charity_app/constants/custome_theme.dart';
import 'package:charity_app/feature/feature_widget.dart';
import 'package:charity_app/pages/first_page.dart';
import 'package:charity_app/pages/fourth.dart';
import 'package:charity_app/pages/second_page.dart';
import 'package:charity_app/pages/third_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This feature is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,

      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        builder: (context, widget){
          return MediaQuery(data:MediaQuery.of(context).copyWith(textScaleFactor: 1.0), 
          child: widget!);
        },
         theme: CustomTheme.mainTheme,
      //     initialRoute: '/',
      //     routes: {
      //       '/': (context)=>const FirstPage(),
      //       '/second':(context)=>const SecondPage(),
      //       '/third':(context)=>const ThirdPage(),
      //       '/four':(context)=>const FourPage(),
      // },
      home: const FirstPage(),
    
      ),
    );
  }
}


