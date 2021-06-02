import 'package:flutter/material.dart';
import 'package:storedelivery/screens/addOrders/create_OrdersTranferMethod.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class CreateOrderRecevier extends StatelessWidget {
  //const CreateOrderRecevier({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      appBar: AppBar(
        backgroundColor: Color(0xff1EC8C8),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: const Text("Create Order",style: Contanst.titleAppBar,textAlign: TextAlign.center)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text("Information of receiver",style: Contanst.titleInnforOrders,),
            SizedBox(height: 20,),
            CustomInput(
              title: "Receiver Name",
              hintText: "HN123",
              iconImages: "assets/images/nameperson.png",
            ),
            CustomInput(
              title: "Receiver Phone Number",
              hintText: "09090909",
              iconImages: "assets/images/phonIn.png",
            ),
            CustomInput(
              title: "Receiver Dictrict",
              hintText: "Dictrict 1",
              iconImages: "assets/images/addressIn.png",
            ),
            CustomInput(
              title: "Receiver Ward",
              hintText: "Ward 1",
              iconImages: "assets/images/addressIn.png",
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateOrdersTranferMethod()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50,
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
