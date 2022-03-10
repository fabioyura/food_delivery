import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color?
      color; //A cor será dinamica. Ou seja, cada vez que usarmos essa classe, poderemos optar por muda-la (por isso a ?, quer dizer que é um parametro opcional)
  final String text;
  double size; //Esconder o texto '...' quando ficar muito grande
  double height;

  SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 12,
      this.height = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}
