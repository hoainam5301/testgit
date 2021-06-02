import 'package:flutter/material.dart';
import 'package:storedelivery/screens/addOrders/create_OrdersReceiver.dart';
import 'package:storedelivery/widget/button.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/custom_input.dart';

class CreateOrderGeneral extends StatelessWidget {
 // const ({Key key}) : super(key: key);


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
            Text("Information of order",style: Contanst.titleInnforOrders,),
            SizedBox(height: 20,),
            CustomInput(
              title: "Order Name",
              hintText: "Clock",
              iconImages: "assets/images/ordername.png",
            ),
            CustomInput(
              title: "Weight",
              hintText: "1kg",
              iconImages: "assets/images/weight.png",
            ),
            CustomInput(
              title: "Money",
              hintText: "300000 VNĐ",
              iconImages: "assets/images/money.png",
            ),
            CustomInput(
              title: "Note",
              hintText: "Fragile",
              iconImages: "assets/images/note.png",
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateOrderRecevier()));
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
