import 'package:boring_show_exmp1/src/article.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Link to most used sites in daily purpose'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        //it basically a refresher to refresh the things like we see in our chrome browser
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1));
          setState(() {
            _articles.removeAt(0); // it removes the items from the list
          });
        },
        child: ListView(
          children: _articles
              .map(_buildItem)
              .toList(), // conversion of map into list type(TypeConversion)
        ),
      ),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
      key: Key(article.text),
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTile(
        //we used it so that when we click on it will expend
        title: Text(
          article.text,
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${article.commentsCount} comments"),
              IconButton(
                color: Colors.blueAccent,
                icon: Icon(Icons.launch),
                onPressed: () async {
                  //It will launch the following url that are listed in article.dart file in your default browser
                  final fakeUrl = "https://${article.domain}";
                  // canLaunch and launch both are async future functions so we have to use async and await. It means we have to wait for the data
                  if (await canLaunch(fakeUrl)) {
                    launch(fakeUrl);
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
