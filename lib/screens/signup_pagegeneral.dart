import 'package:flutter/material.dart';
import 'package:storedelivery/screens/signup_pageInformationStore.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class SignUp extends StatelessWidget {
  //const SignUp({Key key}) : super(key: key);

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
            SizedBox(height: 70,),
            CustomInput(
              title: "E-mail",
              hintText: "mail@gmail.com",
              iconImages: "assets/images/gmailIn.png",
              isAddress: true ,
            ),
            CustomInput(
              title: "Username",
              hintText: "Username123123",
              iconImages: "assets/images/userIn.png",
            ),
            CustomInput(
              title: "Password",
              hintText: "*********",
              iconImages: "assets/images/passIn.png",
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpStoreInformation()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 120,
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
