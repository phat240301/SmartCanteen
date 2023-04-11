import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/HomeScreen.dart';
import 'package:smart_canteen/UI/LoginScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body: Material(
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: const BoxDecoration(
           gradient: LinearGradient(
               begin: Alignment.topLeft,
               end: Alignment.topRight,
               colors: <Color>[
                 Color(0xfffaa727),
                 Color(0xfff9a423),
                 Color(0xfff79c18),
                 Color(0xfff39511),
                 Color(0xfff08e09),
               ],
               tileMode: TileMode.mirror),
         ),
         child:  Stack(
           alignment: Alignment.topLeft,
           children: [
             Positioned(top: 50,
               left: 10,
               child: InkWell(
                 onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
                 },
                 child: Icon(Icons.arrow_back,color: Colors.white),),
               ),
             Container(
               alignment: Alignment.topCenter,
               padding: EdgeInsets.only(top: 60),
               child: Column(
                 children: [
                   ClipRRect(
                       borderRadius: BorderRadius.circular(80.0),
                       child: Image.asset('images/user_test.jpg',height: 150,width: 150,)
                   ),
                   Padding(padding: EdgeInsets.only(top: 10),child: Text("Trần Tấn Phát",style: TextStyle(
                     fontSize: 22,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'RobotoMono',
                     letterSpacing: 1.5,
                   )),),
                 ],
               )
             ),
             Positioned(top: 280,
                 child: Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height,
                     padding: EdgeInsets.only(top: 60,left: 40),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(30),
                           topRight: Radius.circular(30)),
                     ),
                     child: Column(
                       children: [
                         Align(
                           alignment: Alignment.topLeft,
                           child:  Text("Thông tin ",style: TextStyle(
                               color:Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 28,
                               letterSpacing: 1.5,
                               fontFamily: 'RobotoMono'
                           )),
                         ),
                        SizedBox(
                          height: 10,
                        ),
                         Padding(padding: EdgeInsets.only(top:20,left: 10), child: TextField(
                           decoration: InputDecoration(
                               enabled: false,
                               border: InputBorder.none,
                               labelText: "ID",
                               labelStyle: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               ),
                               prefixIcon: Icon(Icons.account_circle),
                               floatingLabelBehavior: FloatingLabelBehavior.always,
                               hintText: "1911062072",
                               hintStyle: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black,
                               )),),),
                         SizedBox(
                           height: 10,
                         ),
                         Padding(padding: EdgeInsets.only(left: 10),child: TextField(
                           decoration: InputDecoration(
                               enabled: false,
                               border: InputBorder.none,
                               labelText: "Email",
                               labelStyle: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold
                               ),
                               prefixIcon: Icon(Icons.email),
                               floatingLabelBehavior: FloatingLabelBehavior.always,
                               hintText: "abc@gmail.com",
                               hintStyle: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black,
                               )),),),
                         SizedBox(
                           height: 10,
                         ),
                        Padding(padding: EdgeInsets.only(left: 10),child:  TextField(
                          decoration: InputDecoration(
                              enabled: false,
                              border: InputBorder.none,
                              labelText: "Phone number",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                              prefixIcon: Icon(Icons.phone_iphone),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              hintText: "0123456789",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),),),
                         SizedBox(
                           height: 10,
                         ),
                        Padding(padding: EdgeInsets.only(left: 10),child:  TextField(
                          decoration: InputDecoration(
                              enabled: false,
                              border: InputBorder.none,
                              labelText: "Address",
                              labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                              prefixIcon: Icon(Icons.edit_location),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              hintText: "TP.Hồ Chí Minh",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),),),
                         SizedBox(
                           height: 10,
                         ),
                         Padding(padding: EdgeInsets.only(left: 10),child: TextField(
                           decoration: InputDecoration(
                               enabled: false,
                               border: InputBorder.none,
                               labelText: "D.O.B",
                               labelStyle: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18
                               ),
                               prefixIcon: Icon(Icons.calendar_month),
                               floatingLabelBehavior: FloatingLabelBehavior.always,
                               hintText: "24/03/2001",
                               hintStyle: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black,
                               )),),),
                         SizedBox(
                           height: 10,
                         ),
                       ],
                     )
                   )),
             Positioned(top: 260, bottom:490,left: 50,right:50,child: ElevatedButton(
               child: Text("Đăng xuất",style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'RobotoMono',
                 letterSpacing: 1.0,
               )),
               onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
               },
               style: ButtonStyle(
                   elevation: MaterialStateProperty.all(5),
                   padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30,vertical: 15)),
                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30),
                     side: BorderSide(
                         width: 2,
                         color: Colors.blue
                     ),
                   ))
               ),
             ),),
             Positioned(
               top: 260, bottom:490,left: 60,
                 child: CircleAvatar(
                 radius: 20,
                 backgroundColor: Color(0xffffffff),
                 child: IconButton(
                   padding: EdgeInsets.all(1),
                     color: Colors.brown,
                     onPressed: () {},
                     icon: Icon(
                       size: 28,
                       Icons.arrow_back,
                     )),
             )),
           ],
         ),
       ),
     )
    );
  }
}