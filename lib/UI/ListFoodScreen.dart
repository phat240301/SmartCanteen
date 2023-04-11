import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListFoodScreen extends StatefulWidget {
  const ListFoodScreen({Key? key}) : super(key: key);

  @override
  _ListFoodScreenState createState() => _ListFoodScreenState();
}

class _ListFoodScreenState extends State<ListFoodScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Container(
        color: Colors.grey.shade400,
        padding: EdgeInsets.all(10),
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black54,size: 30,),
                ),
                Text("Thức ăn",
                  style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),),
                    SizedBox(
                      width: 30,
                    ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Card(
                      elevation: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width-30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset('images/user_test.jpg',height: 100,width: 100,fit: BoxFit.cover,)
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Burger",style: TextStyle(
                                        color:Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                        fontFamily: 'RobotoMono'
                                    )),
                                    Text("30.000đ",style: TextStyle(
                                        color:Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'RobotoMono'
                                    )),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: () {},
                                    icon: Icon(Icons.arrow_circle_right_sharp,size: 30,)),
                                SizedBox(height: 5,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width-30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset('images/user_test.jpg',height: 100,width: 100,fit: BoxFit.cover,)
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Burger",style: TextStyle(
                                      color:Colors.grey.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                      fontFamily: 'RobotoMono'
                                  )),
                                  Text("30.000đ",style: TextStyle(
                                      color:Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'RobotoMono'
                                  )),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right_sharp,size: 30,)),
                              SizedBox(height: 5,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]
        ),
      ),
    );
  }

}