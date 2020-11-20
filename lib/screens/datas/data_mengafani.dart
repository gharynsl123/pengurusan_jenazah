import 'package:flutter/material.dart';
import 'package:pengurusan_jenazah/screens/detail/detail_mengafi.dart';

class MengafaniData extends StatefulWidget {
  @override
  _MengafaniDataState createState() => _MengafaniDataState();
}

class Mengafani {
  String judulMengafani;
  String pengertianMengafani;
  String isiMengafani;

  Mengafani({this.judulMengafani, this.pengertianMengafani, this.isiMengafani});
}

List<Mengafani> dataMengafani = [
  Mengafani(
    judulMengafani: "Berikut cara mengafani jenazah laki-laki:",
    pengertianMengafani:
        "Tata cara mengurus jenazah dari memandikan sampai menguburkan berikutnya adalah mengafani jenazah. Ada sedikit perbedaan cara mengafani jenazah laki-laki dan perempuan sebagai tata cara mengurus jenazah dari memandikan sampai menguburkan ini.",
    isiMengafani:
        "1. Siapkan tali-tali pengikat kafan secukupnya. Letakkan secara vertikal tepat di bawah kain kafan yang akan menjadi lapis pertama.\n2. Bentangkan kain kafan lapis pertama yang sudah dipotong sesuai ukuran jenazah.\n3. Beri wewangian pada kain kafan lapis pertama.\n4. Bentangkan kain kafan lapis kedua yang sudah dipotong sesuai ukuran jenazah.\n5. Beri wewangian pada kain kafan lapis kedua.\n6. Bentangkan kain kafan lapis ketiga yang sudah dipotong sesuai ukuran jenazah.\n7. Beri wewangian pada kain kafan lapis ketiga.\n8. Letakkan jenazah di tengah-tengah kain kafan lapis ketiga.\n9. Tutup dengan kain lapis ketiga dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.\n10. Tutup dengan kain lapis kedua dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.\n11. Tutup dengan kain lapis pertama dari sisi kiri ke kanan, kemudian kain dari sisi kanan ke kiri.\n12. Ikat dengan tali pengikat yang sudah disediakan.\n",
  ),
  Mengafani(
    judulMengafani: "Cara Mengafani Jenazah Perempuan",
    pengertianMengafani:
        "Berbeda dengan jenazah laki-laki, berikut ini cara mengafani jenazah perempuan:",
    isiMengafani:
        "1. Bentangkan 2 lembar kain kafan yang sudah dipotong sesuai ukuran jenazah. Kemudian letakkan kain sarung tepat pada badan antara pusar dan kedua lututnya.\n2. Persiapkan baju gamis dan kerudung di tempatnya.\n3. Sediakan 3–5 utas tali dan letakkan di paling bawah kain kafan.\n4. Sediakan kapas yang sudah diberikan wangi-wangian, yang nantinya diletakkan pada anggota badan tertentu.\n5. Setelah kain kafan siap, lalu angkat dan baringkan jenazah di atas kain kafan.\n6. Letakkan kapas yang sudah diberi wangi-wangian tadi ke tempat anggota tubuh seperti halnya pada jenazah laki-laki.\n7. Selimutkan kain sarung pada badan jenazah, antara pusar dan kedua lutut. Pasangkan baju gamis berikut kain kerudung. Untuk yang rambutnya panjang bisa dikepang menjadi 2/3, dan diletakkan di atas baju gamis di bagian dada.\n8. Selimutkan kedua kain kafan selembar demi selembar mulai dari yang lapisan atas sampai paling bawah. Setelah itu ikat dengan beberapa utas tali yang tadi telah disediakan.\n",
  ),
];

class _MengafaniDataState extends State<MengafaniData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount:dataMengafani.length ,itemBuilder: (context, index){
        String titleMengafai = dataMengafani[index].judulMengafani;
        String deksMengafani = dataMengafani[index].pengertianMengafani;
        String contentMengafani = dataMengafani[index].isiMengafani;
        return MengafaniDetail(
          itemTitleMengafi: titleMengafai,
          itemDeskMengafi: deksMengafani,
          itemContentMengafi: contentMengafani,
        );
      }),
    );
  }
}
