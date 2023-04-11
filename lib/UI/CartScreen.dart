import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/MenuScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}


class _CartScreenState extends State<CartScreen> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top:15),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment:  CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child:  Icon(Icons.arrow_back,color: Colors.white),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuScreen(),));
                  },
                ),
                Text("Giỏ hàng",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'RobotoMno')),
                SizedBox(width: 5,)
              ],
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 5,),
                  VerticalDivider(
                    color: Colors.lightBlue, //color of divider
                    width: 15, //width space of divider
                    thickness: 5, //thickness of divier line
                    indent: 10, //Spacing at the top of divider.
                    endIndent: 10, //Spacing at the bottom of divider.
                  ),
                  Icon(Icons.warning_rounded,color: Colors.lightBlue,size: 35),
                  SizedBox(width: 5,),
                  Text("Vui lòng kiểm tra trước khi thanh toán",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                      ),textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Món ăn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("Giá",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("Số lượng ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.blueGrey, //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 0, //spacing at the start of divider
                    endIndent: 0, //spacing at the end of divider
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Cơm sườn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("25.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 1.2,
                                color: Colors.orange
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 30,
                                  padding: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                    color: Colors.orange,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: IconButton(
                                        iconSize: 18,
                                        onPressed: () {
                                        }, icon: Icon(Icons.remove)),
                                  )
                              ),
                              Container(
                                width: 26,
                                child: Text("0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,),
                              ),
                              Container(
                                width: 33,
                                padding: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                  color: Colors.orange,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      iconSize: 18,
                                      onPressed: () {

                                      }, icon: Icon(Icons.add)),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Cơm sườn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("25.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 1.2,
                                color: Colors.orange
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 30,
                                  padding: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                    color: Colors.orange,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: IconButton(
                                        iconSize: 18,
                                        onPressed: () {
                                        }, icon: Icon(Icons.remove)),
                                  )
                              ),
                              Container(
                                width: 26,
                                child: Text("0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,),
                              ),
                              Container(
                                width: 33,
                                padding: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                  color: Colors.orange,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      iconSize: 18,
                                      onPressed: () {

                                      }, icon: Icon(Icons.add)),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Cơm sườn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Text("25.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 1.2,
                                color: Colors.orange
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 30,
                                  padding: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                                    color: Colors.orange,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: IconButton(
                                        iconSize: 18,
                                        onPressed: () {
                                        }, icon: Icon(Icons.remove)),
                                  )
                              ),
                              Container(
                                width: 26,
                                child: Text("0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,),
                              ),
                              Container(
                                width: 33,
                                padding: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                  color: Colors.orange,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: IconButton(
                                      iconSize: 18,
                                      onPressed: () {

                                      }, icon: Icon(Icons.add)),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Divider(
                    color: Colors.blueGrey, //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 0, //spacing at the start of divider
                    endIndent: 0, //spacing at the end of divider
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("khuyến mãi",style: TextStyle(color: Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.0)),
                      Text("5%",style: TextStyle(color: Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Thuế",style: TextStyle(color: Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.0)),
                      Text("5%",style: TextStyle(color: Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tổng",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1.0)),
                      Text("75.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 100,),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context){
                          return Dialog(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width-80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    "Chọn phương thức thanh toán",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                  RadioListTile(
                                    title: Row(
                                      children: [
                                        Image.asset('images/momo_logo.png',height: 50,width: 50,fit: BoxFit.cover,),
                                        Text("momo"),
                                      ],
                                    ),
                                    value: "momo",
                                    groupValue: "momo",
                                    onChanged: (value){
                                      setState(() {
                                        payment = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Thanh toán tại quầy"),
                                    value: "stay",
                                    groupValue: "stay",
                                    onChanged: (value){
                                      setState(() {
                                        payment = value.toString();
                                      });
                                    },
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        content: Text(payment.toString()),
                                      ));
                                    },
                                    style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(5),
                                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 90,vertical: 15)),
                                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(
                                              width: 2,
                                              color: Colors.blue
                                          ),
                                        ))
                                    ),
                                    child: Text("Xác nhận",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily: 'RobotoMono',
                                          letterSpacing: 2.0,
                                        ))
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.orange),
                          elevation: MaterialStateProperty.all(5),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60,vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                width: 2,
                                color: Colors.orange
                            ),
                          ))
                      ),
                      child:GestureDetector(
                        onTap: (){},
                        child:
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Thanh toán",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'RobotoMono',
                                  letterSpacing: 2.0,
                                )), // <-- Text
                            SizedBox(
                              width: 5,
                            ),
                            Icon( // <-- Icon
                              Icons.payment,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}