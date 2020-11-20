import 'package:flutter/material.dart';
import 'package:pengurusan_jenazah/screens/detail/detail_memandikan.dart';

class MemandikanData extends StatefulWidget {
  @override
  _MemandikanDataState createState() => _MemandikanDataState();
}

class Memandikan {
  String judulMemandikan;
  String pengertianMemandikan;
  String isiMemandikan;

  Memandikan(
      {this.judulMemandikan, this.pengertianMemandikan, this.isiMemandikan});
}

List<Memandikan> dataMemandikan = [
  Memandikan(
      judulMemandikan: "Miat MemandiKan jenazah",
      pengertianMemandikan:
          "Tata cara mengurus jenazah dari memandikan sampai menguburkan yang pertama harus dipahami tentunya dalam memandikan. Sebagai cara yang pertama dalam tata cara mengurus jenazah dari memandikan sampai menguburkan, memandikan jenazah sangat penting dilakukan dengan benar.",
      isiMemandikan:
          "Niat memandikan jenazah perempuan:\n\nNawaitul ghusla adaa 'an hadzihil mayyitati lillahi ta'aalaa\n\nArtinya: \"Aku berniat memandikan untuk memenuhi kewajiban dari jenazah (wanita) ini karena Allah Ta'ala.\"\n\nNiat memandikan jenazah laki-laki:\n\nNawaitul ghusla adaa 'an hadzal mayyiti lillahi ta'aalaa\n\nArtinya: \"Aku berniat memandikan untuk memenuhi kewajiban dari jenazah (pria) ini karena Allah Ta'ala.\""),
  Memandikan(
      judulMemandikan: "Cara Memandikan Jenazah",
      pengertianMemandikan:
          "Tata cara mengurus jenazah dari memandikan sampai menguburkan yang pertama harus dipahami tentunya dalam memandikan. Sebagai cara yang pertama dalam tata cara mengurus jenazah dari memandikan sampai menguburkan, memandikan jenazah sangat penting dilakukan dengan benar.",
      isiMemandikan:
          "1. Meletakkan jenazah dengan kepala agak tinggi di tempat yang disediakan\n2. Yang memandikan jenazah hendaklah memakai sarung tangan.\n3. Ambil kain penutup dari jenazah dan ganti dengan kain basahan agar auratnya tidak terlihat\n4. Setelah itu bersihkan giginya, lubang hidung, lubang telinga, celah ketiaknya, celah jari tangan dan kaki serta rambutnya.\n5. Bersihkan kotoran jenazah baik yang keluar dari depan maupun dari belakang terlebih dahulu. Caranya, tekan perutnya perlahan-lahan agar apa yang ada di dalamnya keluar.\n6. Siram atau basuh seluruh anggota tubuh jenazah dengan air sabun.\n7. Kemudian siram dengan air yang bersih sambil berniat sesuai jenis kelamin jenazah.\n 8. Siram atau basuh dari kepala hingga ujung kaki dengan air bersih. Siram sebelah kanan dan kiri masing-masing 3 kali.\n9. Memiringkan jenazah ke kiri, basuh bagian lambung kanan sebelah belakang.\n10. Memiringkan jenazah ke kanan, basuh bagian lambung kirinya sebelah belakang.11. Siram lagi dengan air bersih dari kepala hingga ujung kaki.\n12. Siram dengan air kapur barus.\n13. Jenazah kemudian diwudhukan seperti orang yang berwudhu sebelum sholat.\n14. Perlakukan jenazah dengan lembut saat membalik dan menggosok anggota tubuhnya.\n15. Jika keluar dari jenazah itu najis setelah dimandikan dan mengenai badannya, wajib dibuang dan dimandikan lagi. Jika keluar najis setelah di atas kafan, tidak perlu diulangi mandinya, cukup hanya dengan membuang najis tersebut.\n16. Bagi jenazah wanita, sanggul rambutnya harus dilepas dan dibiarkan terurai ke belakang. Setelah disiram dan dibersihkan, lalu dikeringkan dengan handuk dan dikepang.\n17. Keringkan tubuh jenazah setelah dimandikan dengan handuk sehingga tidak membasahi kain kafannya.\n18. Selesai memandikan jenazah, berilah wangi-wangian yang tidak mengandung alkohol sebelum dikafani. Biasanya menggunakan air kapur barus.\n"),

];

class _MemandikanDataState extends State<MemandikanData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount:dataMemandikan.length ,itemBuilder: (context, index){
        String titleMemandikan = dataMemandikan[index].judulMemandikan;
        String deksMemandikan = dataMemandikan[index].pengertianMemandikan;
        String contentMemandikan = dataMemandikan[index].isiMemandikan;
        return MemandikanDetail(
          itemTitleMemandikan: titleMemandikan,
          itemDeskMemandikan: deksMemandikan,
          itemContentMemandikan: contentMemandikan,
        );
      }),
    );
  }
}
