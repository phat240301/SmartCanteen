// import 'package:hd_bank/API/Viewmodels/login_viewmodel.dart';
// import 'package:hd_bank/Screen/View/SignUp/signup_screen.dart';
// import 'package:hd_bank/locator.dart';
// import 'package:svg_icon/svg_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  bool checkPass = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // final LoginViewModel _loginviewmodel = locator<LoginViewModel>();
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
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage("images/logo_hutech.png"),fit: BoxFit.contain,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child:  Text("Smart Canteen",style: TextStyle(
                      color:Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: 'RobotoMono'
                  )),
                ),
                // Text("Login",style: TextStyle(
                //     color:Colors.black,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 32,
                //     fontFamily: 'RobotoMono'
                // )),
                // SizedBox(height: 10,),
                // Text("Please sign in to continue",style: TextStyle(
                //     color:Colors.grey.shade500,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 18,
                //     fontFamily: 'RobotoMono'
                // )),
                SizedBox(height: 50,),
                TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 18),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Username",
                    prefixIcon: Icon(Icons.account_circle),
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
                  obscureText: checkPass,
                  style: TextStyle(color: Colors.black,fontSize: 18),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Password",
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          checkPass = !checkPass;
                        });
                      },
                      child: checkPass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                    ),
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
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: (){},
                      child: Text("Quên mật khẩu ?",
                        style: TextStyle(letterSpacing: 0.4,
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono'
                        ),)),
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.centerRight,
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
                        child:GestureDetector(
                          onTap: (){},
                          child:
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Login",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'RobotoMono',
                                    letterSpacing: 2.0,
                                  )), // <-- Text
                              SizedBox(
                                width: 5,
                              ),
                              Icon( // <-- Icon
                                Icons.login,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      // ElevatedButton(
                      //   onPressed: () {
                      //   },
                      //   style: ButtonStyle(
                      //       elevation: MaterialStateProperty.all(5),
                      //       padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10,vertical: 15)),
                      //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(35),
                      //         side: BorderSide(
                      //             width: 2,
                      //             color: Colors.blue
                      //         ),
                      //       ))
                      //   ),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.min,
                      //     children: [
                      //       // SvgIcon("assets/icons/icons8-touch_id.svg",width: 50,height: 30,)
                      //       Ima
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 130,),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text("Bạn chưa có tài khoản ?",
                            style: TextStyle(letterSpacing: 0.3,
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoMono'
                            ),),),
                        TextButton(
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                            },
                            child: Text("Đăng ký",
                              style: TextStyle(
                                  letterSpacing: 0.3,
                                  color: Colors.blueAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'RobotoMono'
                              ),)),
                      ],
                    )
                ),
              ],
            ),
          )

      ),
    );
  }

}