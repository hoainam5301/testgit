import 'package:flutter/material.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class StoreBankInformation extends StatelessWidget {
  //const StoreBankInformation({Key key}) : super(key: key);

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
              title: "Bank Account Name",
              hintText: "HN123",
              iconImages: "assets/images/bankIn.png",
            ),
            CustomInput(
              title: "Bank Account Number",
              hintText: "09090909",
              iconImages: "assets/images/bankIn.png",
            ),
            CustomInput(
              title: "Bank Name",
              hintText: "AriBank",
              iconImages: "assets/images/bankIn.png",
            ),
            CustomInput(
              title: "Branch",
              hintText: "HCM",
              iconImages: "assets/images/bankIn.png",
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60,
                  bottom: 40),
              child: ButtonBtn(
                title: "Create",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
