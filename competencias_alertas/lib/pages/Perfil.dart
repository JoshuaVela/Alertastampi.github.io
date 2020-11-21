import 'package:flutter_auths/pages/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auths/controllers/authentications.dart';
import 'package:flutter_auths/main.dart';
import 'package:firebase_auth/firebase_auth.dart';




class PerfilScreen extends StatelessWidget {
  static const routeName = '/details-screen';

  Widget textfield({@required String hintText}){
    return Material(
      elevation:4,
      shadowColor: Colors.grey,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),

      ),
      child: TextField(
        decoration:InputDecoration(
            hintText:hintText ,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color:Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled:true,


            border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10.0),
                borderSide:BorderSide.none

            )
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff555555),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [

            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  
                  Container(

                      height:450,
                      width:double.infinity,
                      margin:EdgeInsets.symmetric(horizontal:10),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textfield(
                            hintText:'UserName',

                          ),
                          textfield(
                            hintText:'Email',

                          ),
                          textfield(
                            hintText:'Edad',
                          ),
                          IconButton(
                            icon: Icon(Icons.exit_to_app),
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () => signOutUser().then((value) {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                      (Route<dynamic> route) => false);
                            }),
                          ),


                        ],
                      )
                  )
                ]

            ),
            CustomPaint(
              child:Container(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
              ),
              painter:HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              ],
            ),
            Padding(padding: EdgeInsets.only(bottom:270,left:184),
              child: CircleAvatar(
                backgroundColor:Colors.black54,
                child:IconButton(
                  icon:Icon(
                    Icons.edit,
                    color:Colors.white,
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}


class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=> false;
}

