import 'package:flutter/material.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/showInFormationOrders.dart';

class ListOrder extends StatelessWidget {
  const ListOrder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1EC8C8),
        title: Center(child: const Text("List Orders",style: Contanst.titleAppBar,)),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ShowInformationOrder(
                percent: "15%",
                startOrdersOneMonth: "50",
                endOrdersOnmonth: "100",
              ),
              ShowInformationOrder(
                percent: "20%",
                startOrdersOneMonth: "125",
                endOrdersOnmonth: "150",
              ),
              ShowInformationOrder(
                percent: "25%",
                startOrdersOneMonth: "175",
                endOrdersOnmonth: "200",
              ),
              ShowInformationOrder(
                percent: "30%",
                startOrdersOneMonth: "225",
                endOrdersOnmonth: "250",
              ),
             /* ShowInformationOrder(
                percent: "35%",
                startOrdersOneMonth: "275",
                endOrdersOnmonth: "300",
              ),
              ShowInformationOrder(
                percent: "40%",
                startOrdersOneMonth: "325",
                endOrdersOnmonth: "350",
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
