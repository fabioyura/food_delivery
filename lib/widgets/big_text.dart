import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color?
      color; //A cor será dinamica. Ou seja, cada vez que usarmos essa classe, poderemos optar por muda-la (por isso a ?, quer dizer que é um parametro opcional)
  final String text;
  double size;
  TextOverflow overflow; //Esconder o texto '...' quando ficar muito grande
  BigText({
    Key? key,
    this.color = const Color(0xFF5c524f),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
