import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smart_canteen/plugin/appbanner.dart';
import 'package:smart_canteen/plugin/indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}


class _MenuScreenState extends State<MenuScreen> {
  final urlImages = [
    'images/user_test.jpg',
    'images/user_test.jpg',
    'images/user_test.jpg',
    'images/user_test.jpg',
    'images/user_test.jpg',
  ];

  int activeIndex = 5;

  Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex,
  count: urlImages.length,
  effect: ExpandingDotsEffect(dotWidth: 15,activeDotColor: Colors.blue,));

  Widget buildImage(String urlImage,int index) =>
    Container(
      color: Colors.blue,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(urlImage,fit: BoxFit.cover),
      ),
    );



  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-120,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16.0),
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.cyan,
                        child: PageView.builder(
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                              onPageChanged: (index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                          },
                          controller:
                          PageController(viewportFraction: 0.7),
                          itemCount: appBannerList.length,
                          itemBuilder: (context, index) {
                            var banner = appBannerList[index];
                            var _scale = _selectedIndex == index ? 1.0 : 0.8;
                            return InkWell(
                                child: TweenAnimationBuilder(
                                  duration: const Duration(milliseconds: 350),
                                  tween: Tween(begin: _scale, end: _scale),
                                  curve: Curves.ease,
                                  child: InkWell(
                                    onTap: () { },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 0.5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            16.0),
                                        image: DecorationImage(
                                          image: AssetImage("images/user_test.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  builder:(context, double value, child) {
                                    return Transform.scale(
                                        scale: value, child: child);
                                  },
                                ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                              appBannerList.length,
                                  (index) => Indicator(
                                  isActive: _selectedIndex == index ? true : false))
                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
                            child: Text("Lịch sử",style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'RobotoMono'
                            ),textAlign: TextAlign.start),
                          )
                      ),
                    ],
                  )
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