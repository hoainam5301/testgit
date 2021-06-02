import 'package:flutter/material.dart';
import 'package:storedelivery/widget/contans.dart';
import 'package:storedelivery/widget/showInformation.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.0),
        child: AppBar(
          backgroundColor: Color(0xff1EC8C8),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Center(child: const Text("Edit Profile",style: Contanst.titleAppBar,)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 24.0
                  ),
                  child: CircleAvatar(
                    radius:70.0,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(100.0),
                      child: Image.asset(
                        "assets/images/meowga.png",
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Container(
              child:Row(
                children:[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0,),
                  child: Text("Save",style: Contanst.inbuttonTextFB,),
                ),
                IconButton(
                    icon: Icon(Icons.save),
                    tooltip: "Save",
                    onPressed:(){} )
              ],
            )
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 24.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "General",
                    style: Contanst.titleInforProfile,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ShowInformation(
                      titleInfor: "Name Store",
                      information: "KD House",
                    ),
                    SizedBox(height: 15,),
                    ShowInformation(
                      titleInfor: "Email",
                      information: "kdhouse@gmail.com",
                    ),
                    SizedBox(height: 15,),
                    ShowInformation(
                      titleInfor: "Phone",
                      information: "0123456789",
                    ),
                    SizedBox(height: 15,),
                    ShowInformation(
                      titleInfor: "Password",
                      information: "********",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Information addresss",
                    style: Contanst.titleInforProfile,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ShowInformation(
                      titleInfor: "Dictrict",
                      information: "Dictrct 1",
                    ),
                    SizedBox(height: 15,),
                    ShowInformation(
                      titleInfor: "Ward",
                      information: "Ward 1",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0,)


            ],
          ),
        ),
      ),
    );
  }
}
