import 'package:flutter/material.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/showInFormationOrders.dart';

class Policy extends StatelessWidget {
  const Policy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Color(0xff1EC8C8),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Center(child: const Text("Commission Policy",style: Contanst.titleAppBar,)),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(200),
                      ),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                            "15%",
                            style: Contanst.textInCirclePolicy,
                          )),
                    ),
                  )
                ),
                Center(child: Text("30 orders/ month",style: Contanst.inbuttonTextFB,),)
              ],
            ),
          ),
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ShowInformationOrder(
              percent: "3%",
              startOrdersOneMonth: "50",
              endOrdersOnmonth: "100",
            )
          ],
        ),
      ),
    );
  }
}
