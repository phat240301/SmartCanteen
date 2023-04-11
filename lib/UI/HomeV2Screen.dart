import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/MenuScreen.dart';
import 'package:smart_canteen/UI/ProfileScreen.dart';


class HomeV2Screen extends StatefulWidget {
  const HomeV2Screen({Key? key}) : super(key: key);

  @override
  _HomeV2ScreenState createState() => _HomeV2ScreenState();
}

class _HomeV2ScreenState extends State<HomeV2Screen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Page 1')),
    const Center(child: Text('Page 2')),
    const Center(child: Text('Page 3')),
  ];

  final List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home,size: 25,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.access_time_outlined,size: 25),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person,size: 25,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person,size: 0,),
      label: '',
    ),
  ];

  final Widget _fab = FloatingActionButton(
    onPressed: () {},
    child: Stack(
      alignment: Alignment.center,
      children: [
        Icon(Icons.shopping_cart,size: 30),
        Padding(
          padding: EdgeInsets.only(left:18,bottom: 25),
          child: CircleAvatar(
            radius: 10,
            child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
          ),
        )
      ],
    ),
  );

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    child:  Text("Trang chủ",style: TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        fontFamily: 'RobotoMono'
                    )),
                  ),
                  InkWell(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('images/user_test.jpg',height: 50,width: 50,)
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),));
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  color: Colors.transparent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide.none
                  ),
                child: Container(
                  width: 330,
                  height: 60,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    filled: true,
                    fillColor: Colors.blueGrey.shade100,
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
                    ),),)
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Danh mục",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'RobotoMono'
                      ),textAlign: TextAlign.start),
                      Text("Xem thêm",style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'RobotoMono'
                      ),textAlign: TextAlign.start),
                    ],
                  )
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('images/user_test.jpg',height: 60,width: 60,),
                        ),
                        Text("Burger",style: TextStyle(
                            color:Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'RobotoMono'
                        )),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('images/user_test.jpg',height: 60,width: 60,),
                        ),
                        Text("Burger",style: TextStyle(
                            color:Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'RobotoMono'
                        )),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('images/user_test.jpg',height: 60,width: 60,),
                        ),
                        Text("Burger",style: TextStyle(
                            color:Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'RobotoMono'
                        )),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('images/user_test.jpg',height: 60,width: 60,),
                        ),
                        Text("Burger",style: TextStyle(
                            color:Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'RobotoMono'
                        )),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('images/user_test.jpg',height: 60,width: 60,),
                        ),
                        Text("Burger",style: TextStyle(
                            color:Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'RobotoMono'
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Thức ăn",style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'RobotoMono'
                        ),textAlign: TextAlign.start),
                        Text("Xem thêm",style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'RobotoMono'
                        ),textAlign: TextAlign.start),
                      ],
                    )
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 100,
                    shadowColor: Colors.grey.shade900,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    child: Container(
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('images/user_test.jpg',height: 140,width: 160,fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                            child: Text("Burger",style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'RobotoMono'
                            )),),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("30.000đ",style: TextStyle(
                                    color:Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'RobotoMono'
                                )),
                                Spacer(),
                                Container(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add_circle),
                                    iconSize: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                  Card(
                      elevation: 100,
                      shadowColor: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('images/user_test.jpg',height: 140,width: 160,fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                              child: Text("Burger",style: TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'RobotoMono'
                              )),),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("30.000đ",style: TextStyle(
                                      color:Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily: 'RobotoMono'
                                  )),
                                  Spacer(),
                                  Container(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle),
                                      iconSize: 40,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // Set the color scheme for the bottom app bar
        color: Colors.white,
        // Set the shape of the bottom app bar
        shape: CircularNotchedRectangle(),
        // Set the position of the floating action button
        notchMargin: 8.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          iconSize: 50,showSelectedLabels: false,showUnselectedLabels: false,
          // Set the index of the currently selected navigation icon
          currentIndex: _currentIndex,
          // Set the color scheme for the navigation icons
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          // Define the navigation icons
          items: _navItems,
          // Call the _onNavItemTapped function when a navigation icon is tapped
          onTap: _onNavItemTapped,
        ),
      ),
      // Set the body of the app to display the current page
      // Set the floating action button to display in the bottom app bar
      floatingActionButton: _fab,
      // Set the position of the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

}