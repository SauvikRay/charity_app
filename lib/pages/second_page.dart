import 'package:charity_app/scroll_list/item_card.dart';
import 'package:charity_app/scroll_list/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  List<ListItem> listItems = [
    ListItem(meal: '1 Meal', dollar: 12, color: 0xFFFF6F00),
    ListItem(meal: '2 Meal', dollar: 18, color: 0xFFF54952),
    ListItem(meal: '3 Meal', dollar: 20, color: 0xFFFFCC98),
    ListItem(meal: '4 Meal', dollar: 25, color: 0xFF108690),
    ListItem(meal: '5 Meal', dollar: 30, color: 0xFFDD6561),
    ListItem(meal: '6 Meal', dollar: 35, color: 0xFFFF1744),
  ];
  @override
  Widget build(BuildContext context) {
    final double width= MediaQuery.of(context).size.width;
    final double height= MediaQuery.of(context).size.height;
   // print('width is $width, size is $height');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Food'),
          backgroundColor: const Color(0xFF214C8E),
          elevation: 0.0,
          leading:  IconButton(onPressed: (){
            Navigator.pop(context);
          } ,icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.white,),),
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/Oval 2.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            //TODO: Creating circular action logo
          ],
        ),
        body:  Column(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    child: Stack(
                      children: <Widget>[
                        //TODO:Show the background appbar color
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(0xFF214C8E),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.only(left:20,right: 50),
                            child: Text(
                                'Select your Plan and enjoy a warm lunch or dinner at your home',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,color: Colors.white),),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 80,
                          ),
                          child: ListView.builder(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics()),
                              scrollDirection: Axis.horizontal,
                              itemCount: listItems.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ItemCard(listItem: listItems[index]);
                              }),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Our Feature',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF214C8E),
                      ),
                    ),
                  ),
                ],



              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: const Color(0xFFF1F1F1),
                    child: Container(
                      width: width/3.5,
                      height: height/8,

                      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(

                        children: [
                          SvgPicture.asset('assets/icon_svg/online-shop.svg',width: 50,height: 50,),
                          const SizedBox(height: 10,),
                          const SizedBox(width: 80,child: Text('Track Delivery', textAlign:TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: const Color(0xFFF1F1F1),
                    child: Container(
                      width: width/3.5,
                      height: height/8,

                      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icon_svg/calendar.svg',width: 50,height: 50,),
                          const SizedBox(height: 10,),
                          const Text('Schedule as\nper your ease ', textAlign:TextAlign.center,style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),

            //bottom map
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Card(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: const Color(0xFFF1F1F1),
                    child: Container(
                      width: width/3.5,
                      height: height/8,

                      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(

                        children: [
                          SvgPicture.asset('assets/icon_svg/maps.svg',width: 50,height: 50,),
                          const SizedBox(height: 10,),
                          const SizedBox(width: 80,child: Text('Track Delivery', textAlign:TextAlign.center,style: TextStyle(color: Colors.black),)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, '/third');},
                    child: Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: const Color(0xFFF1F1F1),
                      child: Container(
                        width: width/3.5,
                        height: height/8,

                        margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icon_svg/enjoy-food.svg',width: 50,height: 50,),
                            const SizedBox(height: 10,),
                            const  SizedBox( width: 80, child:Text('Enjoy a Warm meal', textAlign:TextAlign.center,style: TextStyle(color: Colors.black),),),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),




      ),
    );
  }
}
