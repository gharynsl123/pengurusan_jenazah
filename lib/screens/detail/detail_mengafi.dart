import 'package:flutter/material.dart';

class MengafaniDetail extends StatelessWidget {
  final String itemTitleMengafi;
  final String itemDeskMengafi;
  final String itemContentMengafi;

  const MengafaniDetail(
      {Key key,
      this.itemTitleMengafi,
      this.itemDeskMengafi,
      this.itemContentMengafi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitleMengafi),
      ),
      backgroundColor: Color(0xff54A23D),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 050,
          child: Card(
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text(
                    itemDeskMengafi,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(itemContentMengafi, style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
