import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailFoodScreen extends StatefulWidget {
  const DetailFoodScreen({Key? key}) : super(key: key);

  @override
  _DetailFoodScreenState createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ClipRRect(
                child: Image.asset('images/bgFood.jpg',height: 260,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)
            ),
            Padding(
              padding: EdgeInsets.only(top: 40,left: 20),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back_outlined,color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40,left: 330),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border,color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40,left: 330),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border,color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 240),
              child: Container(
                padding: EdgeInsets.only(top:10,left: 20,right: 20,bottom: 10),
                height:  MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Align(
                      child: Text("Burger king",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'RobotoMono'
                      ),),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("50.000đ",style: TextStyle(
                            color: Colors.orange,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'RobotoMono'
                        ),textAlign: TextAlign.start),
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle_rounded,size: 35,color: Colors.grey,)),
                            SizedBox(
                              width: 30,
                              child: Align(
                                child: Text("2",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'RobotoMono'
                                ),textAlign: TextAlign.start),
                              )
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle,size: 35,color: Colors.orange)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Text("Mô tả",style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'RobotoMono'
                    ),textAlign: TextAlign.start),
                    SizedBox(height: 20),
                    Container(
                      height: MediaQuery.of(context).size.height-550,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Text("Many consumers enjoy a beef burger whenever they get a chance, and many of us have our go-to places for one. However, the results show that quick-service establishments aren’t the only places consumers go for a burger. In fact, many also choose casual or even fine-dining establishments to enjoy a burger."
                            "\n\nMore specifically, the research looked at the quality indicators for burgers and how consumers go about customizing and selecting their burgers when dining out. The research was conducted among 700 consumers who eat beef burgers. Not surprisingly, the most important aspect of a burger is its taste—after all, that is why most of us enjoy them so much. In addition to taste, the overall quality and the value you get for the price you pay is important, as some consumers note",style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'RobotoMono'
                        ),textAlign: TextAlign.start),
                      )
                    ),
                  ],
                ),
              )
            ),
            Padding(
                padding: EdgeInsets.only(top: 110,left: 90,right: 90),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('images/user_test.jpg',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,)
                  ),
                )
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 10),
        color: Colors.transparent,
        height: 75,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
          },
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(5),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(
                    width: 2,
                    color: Colors.blue
                ),
              ))
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Tổng tiền : ",
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'RobotoMono',
                    letterSpacing: 1.0,
                  )),
              Text("100.000đ ",
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'RobotoMono',
                    letterSpacing: 1.5,
                  )),
              SizedBox(width: 30,),
              Icon(Icons.arrow_circle_right_sharp,size: 35,)// <-- Text// <-- Text
            ],
          ),
        ),
      ),
    );
  }

}