import 'package:burcrehberi/burc_detay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(listelenenBurc.burcAdi, style: MyTextStyle.headline6),
            subtitle:
                Text(listelenenBurc.burcTarihi, style: MyTextStyle.subtitle2),
          ),
        ),
      ),
    );
  }
}
