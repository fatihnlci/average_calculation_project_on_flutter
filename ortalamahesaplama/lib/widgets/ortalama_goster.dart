import 'package:flutter/cupertino.dart';
import 'package:ortalamahesaplama/constants/app_constants.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const OrtalamaGoster(
      {Key? key, required this.ortalama, required this.dersSayisi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? "$dersSayisi Ders Girildi" : "Ders Seciniz",
          style: Sabitler.ortalamaGosterBodyStyle,
        ),
        Text(
          ortalama >= 0 ? "${ortalama.toStringAsFixed(2)}" : "0.0",
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          "Ortalama",
          style: Sabitler.ortalamaGosterBodyStyle,
        ),
      ],
    );
  }
}
