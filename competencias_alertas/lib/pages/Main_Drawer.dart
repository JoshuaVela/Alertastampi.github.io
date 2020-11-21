import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/task2.dart';
import 'package:flutter_auths/pages/tasks.dart';
import 'package:flutter_auths/subViews/threadltem.dart';
import 'package:flutter_auths/threadMain.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_auths/pages/detail_screen.dart';
import 'package:flutter_auths/pages/Ajustes.dart';
import 'package:flutter_auths/pages/Perfil.dart';
import 'package:flutter_auths/writePost.dart';
import 'package:flutter_auths/main2.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_auths/threadMain.dart';
import 'package:permission_handler/permission_handler.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: <Widget>[
          Container(
            width:double.infinity,
            padding: EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child:Center(
              child:Column(
                children:<Widget>[
                  Container(
                    width:100,
                    height:100,
                    margin:EdgeInsets.only(
                      top:30,
                    ),
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(
                          image:NetworkImage(
                              'https://www.horacero.com.mx/wp-content/uploads/2019/10/TAMPICO-1.jpg'
                          ),
                          fit:BoxFit.fill
                      ),
                    ),

                  ),
                  Text('Alertas Tampico', style:TextStyle(color:Colors.white,
                  )

                  )

                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.android),
            title:Text(
              'Noticias Internacionales',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> HomeScreen(),
                ),
              );
            },
          ),

          ListTile(

            leading:Icon(Icons.schedule),
            title:Text(
              'Reportes y perfil',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=>MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title:Text(
              'Quejas',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> TasksPage(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
