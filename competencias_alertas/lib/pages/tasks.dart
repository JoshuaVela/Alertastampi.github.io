import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_auths/controllers/authentications.dart';
import 'package:flutter_auths/main.dart';
import 'package:flutter_auths/Api/Api_Manager.dart';
import 'package:flutter_auths/Api/newsInfo.dart';
import 'package:flutter_auths/pages/Main_Drawer.dart';

import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget{
  final String uid;

  HomeScreen({Key key, @required this.uid}) : super(key: key);

  static const routeName='/details-screen';
  @override

  _HomePageState createState() => _HomePageState(uid);
}

class _HomePageState extends State<HomeScreen> {
  final String uid;
  _HomePageState(this.uid);


  Future<NewsModel> _newsModel;

  @override
  void initState() {
    _newsModel = API_Manager().getNews();
    super.initState();
  }

  @override


  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(

          title: Text('Home Page'),
        ),
        drawer:MainDrawer(),
        body:Center(
          child: FutureBuilder<NewsModel>(
            future: _newsModel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.articles.length,
                    itemBuilder: (context, index) {
                      var article = snapshot.data.articles[index];
                      var formattedTime = DateFormat('dd MMM - HH:mm')
                          .format(article.publishedAt);
                      return Container(
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: <Widget>[
                            Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    article.urlToImage,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(formattedTime),
                                  Text(
                                    article.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    article.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              } else
                return Center(child: CircularProgressIndicator());
            },
          ),







        )
    );
  }
}