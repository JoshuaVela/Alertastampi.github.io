import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/Main_Drawer.dart';




class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        title:Text("Reportes Tampico"),
      ),
      body: ListView(
          children:<Widget>[
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Comparte Alerta',
                  hoverColor: Colors.red

              ),
            ),
            RaisedButton(
              child: IconButton(
                icon: Icon(Icons.android),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            Card(
                child:Column(
                    children:<Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius:20,
                          backgroundImage: AssetImage('assets/logos/werever.png'),
                        ),
                        title: Text("Gustavo Antonio"),
                        subtitle:Text("Hace 2 dias"),
                        trailing: Icon(
                            Icons.more_horiz
                        ),
                        contentPadding: EdgeInsets.all(0.0),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        child: Text("Halo Infinite"),
                      ),
                      Container(

                        child:Image.asset('assets/logos/halo.jpeg'),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child:Text("www.Halo.com")
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child:Text("Si señor",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                      ),
                      Container(
                        child: Row(
                          children:<Widget>[
                            Icon(
                              Icons.thumb_up,
                              size:16.0,
                              color:Colors.blue,
                            ),
                            Icon(
                              Icons.thumb_down,
                              size:16.0,
                              color:Colors.red,
                            ),
                            SizedBox(width: 5.0,),
                            Text("111"),
                            Text("Comments")
                          ],
                        ),
                      )
                    ]
                )
            ),

            Card(
                child:Column(
                    children:<Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius:20,
                          backgroundImage: AssetImage('assets/logos/werever.png'),
                        ),
                        title: Text("Gustavo Antonio"),
                        subtitle:Text("Hace 2 dias"),
                        trailing: Icon(
                            Icons.more_horiz
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        child: Text("Halo Infinite"),
                      ),
                      Container(
                        child:Image.asset('assets/logos/halo.jpeg'),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child:Text("www.Halo.com")
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child:Text("Si señor",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                      ),
                      Container(
                        child: Row(
                          children:<Widget>[
                            Icon(
                              Icons.thumb_up,
                              size:16.0,
                              color:Colors.blue,
                            ),
                            Icon(
                              Icons.thumb_down,
                              size:16.0,
                              color:Colors.red,
                            ),
                            SizedBox(width: 5.0,),
                            Text("111")
                          ],
                        ),
                      )
                    ]
                )
            )
          ]
      ),
    );
  }
}