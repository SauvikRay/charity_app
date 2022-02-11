import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'list_item.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({Key? key,required this.listItem}) : super(key: key);

  final ListItem listItem;


  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.transparent,

      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  Color(listItem.color),
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
                       Text(listItem.meal,
                        style: const TextStyle(
                          fontSize: 20,
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
                    text:  TextSpan(
                        text: '\$ ${listItem.dollar}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF002268),
                        ),
                        children:const <TextSpan>[
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35, vertical: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)
                          ),
                        ) ,
                        onPressed: (){},
                        child:const Text('View Details',style: TextStyle(fontFamily: 'Poppins',fontSize: 16,color: Colors.indigo),)),
                  ),
                ),

              ],
            ),
          ),

      ),
    );
  }
}
