import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_canteen/UI/LoginScreen.dart';
// import 'package:hd_bank/Screen/View/Login/login_screen.dart';
// import 'package:svg_icon/svg_icon.dart';

class SignUpScreen extends StatefulWidget{
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
          padding: EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text("Đăng ký",style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'RobotoMono'
                )),
                SizedBox(height: 10,),
                Text("Vui lòng điền đầy dủ thông tin",style: TextStyle(
                    color:Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'
                )),
                SizedBox(height: 40,),
                TextField(
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Số điện thoại",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "CMND",
                    prefixIcon: Icon(Icons.perm_identity),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Họ&Tên",
                    prefixIcon: Icon(Icons.drive_file_rename_outline_rounded),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Mật khẩu",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Nhập lại mật khẩu",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(5),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60,vertical: 15)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                  width: 2,
                                  color: Colors.blue
                              ),
                            ))
                        ),
                        child:
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Đăng Ký",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'RobotoMono',
                                    letterSpacing: 2.0,
                                  )), // <-- Text
                              SizedBox(
                                width: 20,
                              ),
                              Icon( // <-- Icon
                                Icons.logout,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text("Quay lại",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                        ,color: Colors.grey.shade600
                    )),
                  ),)
              ],
            ),
          )
      ),
    );
  }
}
