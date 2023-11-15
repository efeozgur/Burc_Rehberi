import 'package:burcrehberi/burc_item.dart';
import 'package:burcrehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'data/Strings.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;
  BurcListesi({super.key}) {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BURÇLAR VE ÖZELLİKLER",
            style: TextStyle(
                fontFamily: "Courier New",
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      gecici.add(eklenecekBurc);
    }

    return gecici;
  }
}
