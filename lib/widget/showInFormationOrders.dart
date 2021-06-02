import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storedelivery/widget/contans.dart';

class ShowInformationOrder extends StatelessWidget {
  //const ShowInformationOrder({Key key}) : super(key: key);
  final String percent;
  final String startOrdersOneMonth;
  final String endOrdersOnmonth;

  ShowInformationOrder({this.endOrdersOnmonth,this.percent,this.startOrdersOneMonth});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              blurRadius: 7,
              offset: Offset(0, 7),
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:12.0 ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffA1A1A1),
                    width: 1
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  percent,
                  style: Contanst.textInCircle,
                )),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 125.0,
                  ),
                  child: Text("$startOrdersOneMonth orders/month",style: Contanst.regularText,),
                ),
                Text("Stores with $startOrdersOneMonth-$endOrdersOnmonth orders per month\nwill receive $percent of "
                    "the total delivery \ncharge in the first 10 orders.",style: Contanst.informationOrders,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
