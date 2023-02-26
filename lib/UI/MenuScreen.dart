import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,),
                      Icon(Icons.filter_alt,color: Colors.white,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  padding: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-120,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text("asdasd"),
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  width: 330,
                  height: 50,
                  child: TextField(
                    // controller: textSreach,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade100, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blueGrey.shade100, width: 1),
                      ),
                      hintText: "Tìm kiếm",
                      hintStyle:
                      TextStyle(color: Colors.black54, fontSize: 16),
                    ),),),
            ],),],)
    );
  }
}