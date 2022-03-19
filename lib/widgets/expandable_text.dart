import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalfText;
  late String secondHalfText;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      //Checar o tamanho do texto
      firstHalfText = widget.text.substring(0, textHeight.toInt());
      secondHalfText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      //Se o texto for pequeno...
      firstHalfText = widget.text;
      secondHalfText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalfText.isEmpty
          ? SmallText(text: firstHalfText)
          : Column(
              children: [
                SmallText(
                  height: 1.7,
                  size: Dimensions.font16,
                  color: Colors.black45, //AppColors.textColor,
                  text: hiddenText
                      ? (firstHalfText + "...")
                      : (firstHalfText + secondHalfText),
                ),
                InkWell(
                  //Uma área retangulas de um Material que responde ao toque do usuário
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: hiddenText ? "Show more" : 'Show less',
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
