import 'package:flutter/material.dart';
import 'package:pengurusan_jenazah/screens/widgeth/button_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final header = Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height - 550,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    offset: Offset(0.0, 2.0),
                    color: Colors.black26)
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/uAPc6q2S6ZzgS8g2eqi2eZo0LCw0hnfz1I3hR8hZpmQqZ5pr_oiSVMASLVWA8yAIwmtaaQ=s152'))),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(
                    "Info",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 000,
                    height: 2,
                    color: Color(0xff54A23D),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Aplikasi ini memiliki konten berupa referensi untuk user agar dapat belajar tentang tatacara pengurusan jenazah", style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
    final button = Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(child: ButtonWidgeth()),
        )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff54A23D),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Row(
            children: <Widget>[Text("Panduan "), Text("Menguruh Jenazah")],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          header,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Panduan Panduan nya", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          button
        ],
      ),
    );
  }
}
