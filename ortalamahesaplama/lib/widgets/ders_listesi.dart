// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ortalamahesaplama/constants/app_constants.dart';
import 'package:ortalamahesaplama/helper/data_helper.dart';
import '../model/ders.dart';

class DersListesi extends StatelessWidget {
  final Function onDismiss; //eleman çıkarma fonksiyonu oluşturduk
  const DersListesi({Key? key, required this.onDismiss}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: DataHelper.tumEklenenDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                onDismissed: (a) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    child: ListTile(
                      title: Text(tumDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: Sabitler.anaRenk,
                        child: Text((tumDersler[index].harfDegeri *
                                tumDersler[index].krediDegeri)
                            .toStringAsFixed(0)),
                      ),
                      subtitle: Text(
                          "${tumDersler[index].krediDegeri} Kredi Değeri, Not Değeri ${tumDersler[index].harfDegeri}"),
                    ),
                  ),
                ),
                background: Container(
                  color: Colors.red,
                  child: Icon(Icons.cancel),
                ),
              );
            })
        : Container(
            child: Center(
              child: Text(
                "Ders Ekleme Alanı Boş",
                style: Sabitler.baslikStyle,
              ),
            ),
          );
  }
}
