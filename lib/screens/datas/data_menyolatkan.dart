import 'package:flutter/material.dart';
import 'package:pengurusan_jenazah/screens/detail/detail_menyolatkan.dart';

class MenyolatkanData extends StatefulWidget {
  @override
  _MenyolatkanDataState createState() => _MenyolatkanDataState();
}
class Menyolatkan {
  String judulMenyolatkan;
  String pengertianMenyolatkan;
  String isiMenyolatkan;

  Menyolatkan({this.judulMenyolatkan, this.pengertianMenyolatkan, this.isiMenyolatkan});
}
List<Menyolatkan> dataMenyolatkan = [
  Menyolatkan(
    judulMenyolatkan: "Tata Cara Menyolatkan Jenazah",
    pengertianMenyolatkan: "Setelah mengafani, tata cara mengurus jenazah dari memandikan sampai menguburkan selanjutnya adalah menyolatkan jenazah. Shalat jenazah terdapat tujuh rukun seperti berikut:",
    isiMenyolatkan: "1. Berniat (di dalam hati).\n2. Berdiri bagi yang mampu.\n3. Melakukan empat kali takbir (tidak ada ruku’ dan sujud).\n4. Setelah takbir pertama, membaca Al Fatihah.\n5. Setelah takbir kedua, membaca shalawat (minimalnya adalah allahumma sholli ‘ala Muhammad).\n6. Setelah takbir ketiga, membaca doa untuk jenazah.\n7. Takbir keempat membaca doa sebagai berikut:\n8. Salam"
  ),
];

class _MenyolatkanDataState extends State<MenyolatkanData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount:dataMenyolatkan.length ,itemBuilder: (context, index){
        String titleMenyolatkan = dataMenyolatkan[index].judulMenyolatkan;
        String deksMenyolatkan = dataMenyolatkan[index].pengertianMenyolatkan;
        String contentMenyolatkan = dataMenyolatkan[index].isiMenyolatkan;
        return MenyolatkanDetail(
          itemTitleMenyolatkan: titleMenyolatkan,
          itemDeskMenyolatkan: deksMenyolatkan,
          itemContentMenyolatkan: contentMenyolatkan,
        );
      }),
    );
  }
}
