import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../values/app_assets.dart';
import '../../values/app_color.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(), //ác định các giới hạn về kích thước mà một widget
        color: Colors.white,
        child: SingleChildScrollView( // neu an hinh dai co the vuot xuong
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset(AppAssets.icCarRed),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0 , 6),
                child: Text("Welcome Aboard!", style:
                TextStyle(fontSize: 22, color: AppColors.primaryText),),
              ),
              Text("Signup with iCab in simple steps",
                style: TextStyle(fontSize: 16, color: AppColors.secondaryText),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Name",
                      // errorText: "",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset(AppAssets.icUser),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      )
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true, // an mat khau
                decoration: InputDecoration(
                    labelText: "Phone number",
                    // errorText: "",
                    prefixIcon: Container(
                      width: 50, child: Image.asset(AppAssets.icPhone),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email",
                      // errorText: "",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset(AppAssets.icMail),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      )
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true, // an mat khau
                decoration: InputDecoration(
                    labelText: "Password",
                    // errorText: "",
                    prefixIcon: Container(
                      width: 50, child: Image.asset(AppAssets.icLock),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
                    )
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Already a User?",
                      style: TextStyle(color: AppColors.secondaryText, fontSize: 16),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap=(){// tao su kien giong InkWell
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            text:  "Login now",
                            style: TextStyle(
                                color: AppColors.buttonColor, fontSize: 16
                            )
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}