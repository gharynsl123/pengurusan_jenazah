import 'package:flutter/material.dart';
import 'package:pengurusan_jenazah/screens/detail/detail_mengubur.dart';

class MenguburData extends StatefulWidget {
  @override
  _MenguburDataState createState() => _MenguburDataState();
}
class Mengubur {
  String judulMengubur;
  String pengertianMengubur;
  String isiMengubur;

  Mengubur({this.judulMengubur, this.pengertianMengubur, this.isiMengubur});
}
List<Mengubur> dataMengubur =[
  Mengubur(
      judulMengubur: "Tata Cara Menguburkan Jenazah",
      pengertianMengubur: "Tata cara mengurus jenazah dari memandikan sampai menguburkan yang terakhir adalah menguburkan jenazah.",
      isiMengubur: "1. Memperdalam galian lobang kubur agar tidak tercium bau jenazah dan tidak dapat dimakan oleh burung atau binatang pemakan bangkai.\n2. Cara menaruh jenazah di kubur ada yang ditaruh di tepi lubang sebelah kiblat kemudian di atasnya ditaruh papan kayu atau yang semacamnya dengan posisi agak condong agar tidak langsung tertimpa tanah. Namun bisa juga dengan cara lain dengan prinsip yang hampir sama, misalnya dengan menggali di tengah-tengah dasar lobang kubur, kemudian jenazah ditaruh di dalam lobang.Lalu di atasnya ditaruh semacam bata atau papan dari semen dalam posisi mendatar untuk penahan tanah timbunan. Cara ini dilakukan bila tanahnya gembur. Cara lain adalah dengan menaruh jenazah dalam peti dan menanam peti itu dalam kubur.\n3. Cara memasukkan jenazah ke kubur yang terbaik adalah dengan mendahulukan memasukkan kepala jenazah dari arah kaki kubur.\n4. Jenazah diletakkan miring ke kanan menghadap ke arah kiblat dengan menyandarkan tubuh sebelah kiri ke dinding kubur supaya tidak terlentang kembali.\n5. Para ulama menganjurkan supaya ditaruh tanah di bawah pipi jenazah sebelah kanan setelah dibukakan kain kafannya dari pipi itu dan ditempelkan langsung ke tanah. Simpul tali yang mengikat kain kafan supaya dilepas.\n6. Waktu memasukkan jenazah ke liang kubur dan meletakkannya dianjurkan membaca doa seperti: Bismillahi Waala Millati Rosulillah Artinya: “Dengan nama Allah dan atas agama Rasulullah” (HR. at-Tirmidzi dan Abu Daud).\n7. Untuk jenazah perempuan, dianjurkan membentangkan kain di atas kuburnya pada waktu dimasukkan ke liang kubur. Sedang untuk mayat laki-laki tidak dianjurkan.\n8. Orang yang turun ke lobang kubur jenazah perempuan untuk mengurusnya sebaiknya orang-orang yang semalamnya tidak mensetubuhi isteri mereka.\n9. Setelah jenazah sudah diletakkan di liang kubur, dianjurkan untuk mencurahinya dengan tanah tiga kali dengan tangannya dari arah kepala mayit lalu ditimbuni tanah.\n10. Berdoa setelah selesai menguburkan jenazah."
  )
];

class _MenguburDataState extends State<MenguburData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount:dataMengubur.length ,itemBuilder: (context, index){
        String titleMenyolatkan = dataMengubur[index].judulMengubur;
        String deksMenyolatkan = dataMengubur[index].pengertianMengubur;
        String contentMenyolatkan = dataMengubur[index].isiMengubur;
        return MenguburDetail(
          itemTitleMengubur: titleMenyolatkan,
          itemDeskMengubur: deksMenyolatkan,
          itemContentMengubur: contentMenyolatkan,
        );
      }),
    );
  }
}
