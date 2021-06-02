import 'package:flutter/material.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/showInformation.dart';

class CashFlow extends StatelessWidget {
  const CashFlow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1EC8C8),
        title: Center(child: const Text("Casht Flow Management",style: Contanst.titleAppBar,)),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    children: [
                      Center(child: Text("This Month", style: Contanst.headingText,),),
                      Center(child: Text("01/05/2021 - 31/05/2021"),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: "COD money",
                information: "500.000 VNĐ",
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: ""
                    "Storage Charges",
                information: "500.000 VNĐ",
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: "Delivery Charges",
                information: "500.000 VNĐ",
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: "Return Fee",
                information: "500.000 VNĐ",
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: "Delivery Address Change Fee",
                information: "500.000 VNĐ",
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              child: ShowInformation(
                titleInfor: "Promotion",
                information: "500.000 VNĐ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
