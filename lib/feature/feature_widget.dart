import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class FeatureWidget extends StatelessWidget {
  const FeatureWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFCAFFCB),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 const Text('Meal',
                    style:  TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF002268),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icon_svg/veg.svg',
                    height: 18,
                    width: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30, ),
              child: RichText(
                text: const TextSpan(
                    text: '\$12',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF002268),
                    ),
                    children:<TextSpan>[
                      TextSpan(
                        text: ' /a day',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Color(0xFF002268),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),

    );

  }
}
