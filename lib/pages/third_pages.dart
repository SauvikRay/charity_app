import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late int pressed=0;
  @override
  Widget build(BuildContext context) {
    final double width= MediaQuery.of(context).size.width;
    final double height= MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Food Plan',style: TextStyle(color: Colors.indigo,fontFamily: 'Poppins',fontWeight: FontWeight.w200),),
            backgroundColor:const Color(0xFFFFC14F),
            elevation: 0.0,
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.indigo,
            ),highlightColor: const Color(0xFFFFAC0E),) ,
            actions: <Widget>[
              IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon_svg/notification.svg'),),

              //TODO: Creating circular action logo
            ],
            
          ),
          body: SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //3 Meal Section
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: width,
                      decoration:const BoxDecoration(color: Color(0xFFFFC14F),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),),),

                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      child: SvgPicture.asset('assets/icon_svg/meal.svg',height: 90,width: 90,),
                    ),
                    Positioned(
                        top: 5,
                        left: 110,
                        child: Column(
                         // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                              Text('3 Meal',style: TextStyle(fontFamily: 'Poppins',fontSize: 25.0,fontWeight: FontWeight.w700,color: Color(0xFF161D6F),),),
                              Icon(Icons.keyboard_arrow_down),
                              ],
                            ),
                           const SizedBox(
                              height: 50,
                              width: 160,
                                child: Text('1 Veg Sabji, 1 Panner Sabji, 4 Roti, 1 Sweet, Salad and Buttermilk',style: TextStyle(fontFamily: 'Poppins',fontSize:12.0,fontWeight: FontWeight.w100,color: Color(0xFF161D6F),),),),
                          ],
                        ),
                    )
                  ],
                ),
                //Select Days
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   const Text('Select Days',style: TextStyle(fontFamily: 'Poppins',fontSize: 20.0,fontWeight: FontWeight.w200,color: Color(0xFF161D6F),),),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon_svg/calender.svg')),
                  ],
                  ),
                ),
                //Calendar
                SizedBox(
                    height: 300,
                    width: width,
                    child: CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2012),
                      lastDate: DateTime(2025),
                      onDateChanged: (DateTime value) {},

                    )
                ),
                const SizedBox(height: 10,),
                //Button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color:const Color(0xFFDEDEDE),
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(30.0),) ,
                        elevation: 0.0,

                        child: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              (pressed==2)?SvgPicture.asset('assets/icon_svg/check_mark.svg',) :SvgPicture.asset('assets/icon_svg/checkbox.svg',),
                             const SizedBox(width: 10,),
                              const Text('Lunch', style: TextStyle(fontFamily: 'Poppins',fontSize: 18.0,fontWeight: FontWeight.w200,color: Color(0xFF161D6F),),),
                            ],
                          ),
                        ),
                        onPressed:(){
                          setState(() {
                            pressed=2;
                             });
                          },
                      ),
                      MaterialButton(
                        color:const Color(0xFFDEDEDE),
                        shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(30.0),) ,
                        elevation: 0.0,
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              (pressed==1)?SvgPicture.asset('assets/icon_svg/check_mark.svg',) :SvgPicture.asset('assets/icon_svg/checkbox.svg',),
                             const SizedBox(width: 10,),
                              const Text('Dinner', style: TextStyle(fontFamily: 'Poppins',fontSize: 18.0,fontWeight: FontWeight.w200,color: Color(0xFF161D6F),),),
                            ],
                          ),
                        ),
                        onPressed:(){
                          setState(() {
                            pressed=1;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),

               Center(
                 child: InkWell(
                   highlightColor: const Color(0xFF93C0FF),
                   onTap: (){Navigator.pushNamed(context, '/four');},
                   child: Container(
                     margin: const EdgeInsets.symmetric(horizontal: 30),
                     width: width,
                     height: 60,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color:const Color(0xFFFFC14F)),
                     child: Row(
                       children: [
                         Container(
                           width: width/1.8,
                           height: 60,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color:const Color(0xFF012258),),
                           child: Container(
                             padding:const EdgeInsets.symmetric(horizontal: 30),
                             child: Row(
                                 children: <Widget> [
                                  const Text('Book Now',style:TextStyle(fontFamily: 'Poppins',fontSize: 20.0,color: Color(0xFFFFFFFF),),),
                                const SizedBox(width: 20,),
                                SvgPicture.asset('assets/icon_svg/icon_arrow.svg',),
                                 ],),
                           ),
                         ),
                         const SizedBox(width: 20,),
                         const Text('\$29',style:TextStyle(fontFamily: 'Poppins',fontSize: 25.0,fontWeight: FontWeight.w400,color: Color(0xFF4355A5),),),

                       ],
                     ),
                   ),
                 ),
               ),

              ],
            ),
          ),
        ),

    );
  }
}
