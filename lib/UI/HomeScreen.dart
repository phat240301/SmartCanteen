import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
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
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/user_test.jpg',height: 50,width: 50,)
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide.none
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tran Tan Phat ",style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoMono'
                            ),textAlign: TextAlign.start),
                            Text("191106XXXX",style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoMono'
                            ),textAlign: TextAlign.start),
                            SizedBox(height: 20),
                            Text("200.000 đ",style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                            ),textAlign: TextAlign.start),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                                child: Image.asset('images/logo_hutech.png',height: 60,width: 60,)
                            ),
                            ClipRRect(
                                child: Image.asset('images/mastercard.png',height: 60,width: 90,fit: BoxFit.fill,)
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
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
            Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide.none
                ),
                elevation: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10),child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/user_test.jpg',height: 50,width: 50,fit: BoxFit.fill,)
                    ),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Đã thanh toán",style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                          Text("24/03/2023",style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    Text("- 30.000",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'
                    ),textAlign: TextAlign.start),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide.none
                ),
                elevation: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10),child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/user_test.jpg',height: 50,width: 50,fit: BoxFit.fill,)
                    ),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Chuyển tiền",style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                          Text("24/03/2023",style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    Text("- 30.000",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'
                    ),textAlign: TextAlign.start),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide.none
                ),
                elevation: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10),child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/user_test.jpg',height: 50,width: 50,fit: BoxFit.fill,)
                    ),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rút tiền",style: TextStyle(
                              color: Colors.amber,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                          Text("24/03/2023",style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    Text("- 100.000",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'
                    ),textAlign: TextAlign.start),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide.none
                ),
                elevation: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10),child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/user_test.jpg',height: 50,width: 50,fit: BoxFit.fill,)
                    ),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Đã thanh toán",style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                          Text("24/03/2023",style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono'
                          ),textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    Text("+ 65.000",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'
                    ),textAlign: TextAlign.start),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }

}