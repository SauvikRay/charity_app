import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
  double height= MediaQuery.of(context).size.height;
  double width= MediaQuery.of(context).size.width;
  print(height);
  print(width);
    return SafeArea(
      child: Scaffold(
        
        // appBar: AppBar(title: const Text('FirstPage'),),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               SizedBox(
                height: 0.07.sw,
              ),
              //TODO: Creating Main Logo
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: pi/4,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.r),
                      child: Container(
                        height: (width/2.8).w, //140.h,
                        width: (width/2.8).w, //140.w,
                        color: const Color(0xFF106497),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icon_svg/main_logo.svg",
                    width: 0.4.sw,
                    height: 0.4.sw,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
              //TODO: Ending Main Logo
               SizedBox(
                height: 20.h,
              ),
              //TODO: Creating Text
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Let's help together\n",
                    style: Theme.of(context).textTheme.headline1,
                    children: <TextSpan>[
                      TextSpan(
                        text: "in this pandemic!",
                        style: Theme.of(context).textTheme.headline2,
                 ) ]),
                // style: TextStyle(
                //     fontFamily: 'Philosopher',
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20.0,
                //     color: Color(0xFFFFFFFF)),
              ),
               SizedBox(
                height: 10.h,
              ),
              Expanded(
               //fit:Flex
               //Fit.tight,
                child: Text(
                  'You can get medical and food service at your doorsteps and also anyone can donate some fund for covid patients.',
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 0.25.sh,
          //padding:  EdgeInsets.only(top: 10.h),

          // decoration:const BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(10.0),
          //     topLeft: Radius.circular(10.0),
          //   ),
          // ),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                30.r,
              ),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: <Widget>[
               Center(
                child: Text(
                  'Choose your category',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: ClipRRect(
                      child: Material(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icon_svg/medicines.svg",
                                //fit: BoxFit.scaleDown,
                                // height: 80.h,
                                // width: 80.w,
                              ),
                              iconSize:0.23.sw,
                              
                            ),
                            const Text('Medical'),
                          ],
                        ),
                      ),
                    ),
                  ), 
                  Flexible(
                    child: ClipRRect(
                      child: Material(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icon_svg/hot-food.svg",
                              ),
                              iconSize: 0.23.sw,
                            ),
                            const Text('Food'),
                          ],
                        ),
                      ),
                    ),
                  ), 
                  Flexible(
                    child: ClipRRect(
                      child: Material(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                               //Navigator.pushNamed(context,'/second');
                                
                              },
                              icon: SvgPicture.asset(
                                "assets/icon_svg/giving.svg",
                              ),
                              iconSize: 0.23.sw,
                            ),
                            const Text('Donate'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}
