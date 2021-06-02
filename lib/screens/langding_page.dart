import 'package:flutter/material.dart';
import 'package:storedelivery/screens/hom_page.dart';
import 'package:storedelivery/screens/signup_pagegeneral.dart';
import 'package:storedelivery/widget/contans.dart';

class LandingPage extends StatelessWidget {
  //const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top:0.0,
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.0, 0.5),
                colors: <Color>[Color(0xff1EC8C8), Color(0xffFFFFFF).withOpacity(1)],
                tileMode: TileMode.decal,
              )),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 170.0
                    ),
                    child: CircleAvatar(
                      radius: 70.0,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24.0),
                        child: Image.asset(
                          "assets/images/meowga.png",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40
                ),
                child: Text("Delivery App for Store",
                    style: Contanst.headingText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(" Delivery App for Store Delivery App for Store Delivery App for Store",
                textAlign: TextAlign.center,
                style: Contanst.regularTextLandingPage,),
              ),
              SizedBox(height:100.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0,
                horizontal: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        blurRadius: 7,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                        ),
                        child: Image.asset("assets/images/newgmail.png",
                        width: 48.0,
                        height: 48.0,),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0,
                          horizontal: 56),
                          child: Text("Login With Email",
                          style: Contanst.inbuttonTextGoogle,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0,
                      horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff1EC8C8),
                      borderRadius: BorderRadius.circular(36.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          blurRadius: 7,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24.0,
                          ),
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Image.asset("assets/images/newfb.png",
                              width: 48.0,
                              height: 48.0,),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0,
                                horizontal: 45),
                            child: Text("Login With FaceBook",
                              style: Contanst.inbuttonTextFB,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
               },
               child: Padding(
                 padding: const EdgeInsets.symmetric(
                   vertical: 48.0,
                 ),
                 child: RichText(
                     text: TextSpan(
                       text: "Don't have an account?",
                       style: Contanst.regularText,
                       children: const <TextSpan>[
                         TextSpan(
                           text: "Sign Up",
                           style: Contanst.textSpan
                         )
                       ]
                     ),),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
