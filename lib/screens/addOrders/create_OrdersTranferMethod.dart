import 'package:flutter/material.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class CreateOrdersTranferMethod extends StatelessWidget {
  const CreateOrdersTranferMethod({Key key}) : super(key: key);


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
            Text("Delivery Method",style: Contanst.titleInnforOrders,),
            SizedBox(height: 20,),
            CustomInput(
              title: "Delivery Method",
              hintText: "fast delivery",
              iconImages: "assets/images/delivery.png",
            ),
            CustomInput(
              title: "Total Price",
              hintText: "350000 VNĐ",
              iconImages: "assets/images/bill.png",
            ),
            SizedBox(height: 210,),
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
