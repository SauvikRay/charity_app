import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  _FourPageState createState() => _FourPageState();
}
enum PaymentCharacter { credit,paypal,google }

class _FourPageState extends State<FourPage> {
  PaymentCharacter? _character =PaymentCharacter.credit;
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(22.819126, 89.5562123);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }



  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
     int inn=0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Billing Detail',
            style: TextStyle(
                color: Colors.indigo,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w200),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.indigo,
            ),
            highlightColor: const Color(0xFFFFAC0E),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icon_svg/notification.svg'),
            ),

            //TODO: Creating circular action logo
          ],
        ),
        body: Center(
          child: Container(
            height: height,
            width: width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        child: SizedBox(
                          height: 220,
                          width: width - 40,
                          child: GoogleMap(
                            onMapCreated: _onMapCreated,
                            initialCameraPosition:
                                CameraPosition(target: _center, zoom: 11.0),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 220,
                          child: Container(
                            padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5 ),
                            height: 80,
                            width: width - 40,
                            decoration: const BoxDecoration(
                              color: Color(0xFF003765),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget> [
                             const SizedBox( height: 60,width: 160, child: Text('2461 West Drive Chicago, IL 60605',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.white),)),
                                //circleButton
                                ClipOval(
                                  child: Material(
                                    color:const Color(0xFFFF9D39), // Button color
                                    child: InkWell(
                                      splashColor: const Color(0xFFFF9B30), // Splash color
                                      onTap: () {},
                                      child:const SizedBox(width: 50, height: 50, child: Icon(Icons.edit_outlined,color: Colors.indigo,size: 30,)),
                                    ),
                                  ),
                                )
                              ],),
                          ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //TODO:RadioList
                SizedBox(
                  height: 230,
                  child: Column(children:<Widget> [


                    Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),),
                      elevation:( _character== PaymentCharacter.credit)?3.5: 0.0,
                      shadowColor:const Color(0xFF5E90E2),
                      child: RadioListTile<PaymentCharacter>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),
                      selectedTileColor:const Color(0xFF7C85FF),
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: const Color(0xFFFF6868),
                      title: const Text('Credit/Debit Card',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,color: Color(0xFF3D4597) ),),
                      value: PaymentCharacter.credit,
                      groupValue: _character,
                      onChanged: (PaymentCharacter? value,) {
                        setState(() {
                          _character = value;


                        });
                      },
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),),
                      elevation:( _character== PaymentCharacter.paypal)?3.5: 0.0,
                      shadowColor:const Color(0xFF5E90E2),
                      child: RadioListTile<PaymentCharacter>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),),
                        selectedTileColor:const Color(0xFF7C85FF),
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: const Color(0xFFFF6868),
                        title: const Text('Paypal',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,color: Color(0xFF3D4597) ),),
                        value: PaymentCharacter.paypal,
                        groupValue: _character,
                        onChanged: (PaymentCharacter? value,) {
                          setState(() {
                            _character = value;


                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 10,),
                    Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),),
                      elevation:( _character== PaymentCharacter.google)?3.5: 0.0,
                      shadowColor:const Color(0xFF5E90E2),
                      child: RadioListTile<PaymentCharacter>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),),
                        selectedTileColor:const Color(0xFF7C85FF),
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: const Color(0xFFFF6868),
                        title: const Text('Google',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,color: Color(0xFF3D4597) ),),
                        value: PaymentCharacter.google,
                        groupValue: _character,
                        onChanged: (PaymentCharacter? value,) {
                          setState(() {
                            _character = value;


                          });
                        },
                      ),
                    ),
                  ],
                  ),
                ),
                //TODO: Checkout

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10 ),

                  child: InkWell(
                    highlightColor: const Color(0xFF93C0FF),
                    onTap: (){Navigator.pushNamed(context, '/');},
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
                                  const Text('Checkout',style:TextStyle(fontFamily: 'Poppins',fontSize: 20.0,color: Color(0xFFFFFFFF),),),
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
      ),
    );
  }
}
