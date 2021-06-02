import 'package:flutter/material.dart';
import 'package:storedelivery/screens/signUp_pageBankInformation.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class SignUpStoreInformation extends StatelessWidget {
  //const SignUpStoreInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 100.0,
              ),
              child: Text("Let's Get Start!",style: Contanst.headingTextSignUp,),
            ),
            Text("Sign up and we will continue",style: Contanst.regularTextLandingPage,),
            SizedBox(height: 20,),
            CustomInput(
              title: "Name Store",
              hintText: "Pro Store",
              iconImages: "assets/images/storeIn.png",
            ),
            CustomInput(
              title: "Phone Number",
              hintText: "09090909",
              iconImages: "assets/images/phonIn.png",
            ),
            CustomInput(
              title: "Dictrict",
              hintText: "Dictrict 1",
              iconImages: "assets/images/addressIn.png",
            ),
            CustomInput(
              title: "Ward",
              hintText: "Ward TT",
              iconImages: "assets/images/addressIn.png",
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StoreBankInformation()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60,
                    bottom: 40),
                child: ButtonBtn(
                  title: "Continue",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
