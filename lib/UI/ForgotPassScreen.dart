import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:mainsource_audiobook/account/loginPage.dart';
//
// import '../ipconfig/ipconfig.dart';
// import 'package:http/http.dart' as http;

class ForgotPassScreen extends StatefulWidget{
  final otp;
  final idUser;
  final status;
  const ForgotPassScreen({super.key, this.otp, this.idUser, this.status});
  @override
  _ForgotPassScreenState createState()=>_ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen>{
  TextEditingController otptext1 = TextEditingController();
  TextEditingController otptext2 = TextEditingController();
  TextEditingController otptext3 = TextEditingController();
  TextEditingController otptext4 = TextEditingController();
  // IPConfigchange ip = new IPConfigchange();
  String status = "1";
  // Future confirmstatus() async{
  //   var url = Uri.parse('http://'+ip.ipconfig+'/Audio_Book/updateStatusAccount.php');
  //   var response = await http.post(url, body: {
  //     'idUser' : widget.idUser,
  //     'status' : status.trim(),
  //   });
  //   var data = json.decode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.black54,size: 30,),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(" Xác nhận tài khoản",style:TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  Chúng tôi đã gửi mã xác nhận qua email của bạn",style:TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 60,width: 60,
                    child: TextFormField(
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: otptext1,
                      style: TextStyle(
                          fontSize: 24
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,width: 60,
                    child: TextFormField(
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: otptext2,
                      style: TextStyle(
                          fontSize: 24
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,width: 60,
                    child: TextFormField(
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: otptext3,
                      style: TextStyle(
                          fontSize: 24
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 60,width: 60,
                    child: TextFormField(
                      onChanged: (value){
                        if (value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: otptext4,
                      style: TextStyle(
                          fontSize: 24
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                      backgroundColor: Colors.white,
                      side: BorderSide(width: 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Hủy",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 2.0,
                            color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(context: context, builder: (BuildContext context){
                        return Dialog(
                          elevation: 10,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  "Đổi mật khẩu",
                                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 30),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15),
                                  child: Column(
                                    children: [
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
                                      SizedBox(height: 20,),
                                    ],
                                  ),
                                ),SizedBox(height: 10),
                                ElevatedButton(
                                    onPressed: () {

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
                                    child: Text("Thay đổi",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily: 'RobotoMono',
                                          letterSpacing: 1.8,
                                        ))
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                      // String temp = otptext1.text.trim()+otptext2.text.trim()+otptext3.text.trim()+otptext4.text.trim();
                      // if(widget.otp == temp.trim()){
                      //   // confirmstatus();
                      //   // Fluttertoast.showToast(msg: "Moi Dang Nhap Lai");
                      //   // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyLogin()));
                      // }
                      // else
                      // {
                      //   // Fluttertoast.showToast(msg: "Sai Ma Xac Nhan");
                      // }
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 2,
                        padding:  EdgeInsets.symmetric(horizontal: 50,vertical: 15),shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    child:  Text(
                      "Xác nhận",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 2.0,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              // Container(
              //   child: ElevatedButton(style: ButtonStyle(
              //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10)
              //     ))
              //   ),
              //     onPressed: (){
              //     String temp = otptext1.text.trim()+otptext2.text.trim()+otptext3.text.trim()+otptext4.text.trim();
              //     if(widget.otp == temp.trim()){
              //         confirmstatus();
              //         Fluttertoast.showToast(msg: "Moi Dang Nhap Lai");
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=> MyLogin()));
              //     }
              //     else
              //     {
              //       Fluttertoast.showToast(msg: "Sai Ma Xac Nhan");
              //     }
              //   },child: Text('Xác Nhận',style:TextStyle(
              //       fontSize: 18
              //     )),),
              // ),
            ]
        ),
      ),
    );
  }

}