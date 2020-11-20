
import 'package:flutter/material.dart';

class MenyolatkanDetail extends StatelessWidget {
  final String itemTitleMenyolatkan;
  final String itemDeskMenyolatkan;
  final String itemContentMenyolatkan;

  const MenyolatkanDetail(
      {Key key,
        this.itemTitleMenyolatkan,
        this.itemDeskMenyolatkan,
        this.itemContentMenyolatkan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitleMenyolatkan),
      ),
      backgroundColor: Color(0xff54A23D),
      body: SingleChildScrollView(
        child: Container(
//          height: MediaQuery.of(context).size.height - 050,
          child: Card(
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text(
                    itemDeskMenyolatkan,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(itemContentMenyolatkan, style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
