import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ConditionRadioButton extends StatefulWidget {
  const ConditionRadioButton({Key? key}) : super(key: key);

  @override
  State<ConditionRadioButton> createState() => _ConditionRadioButtonState();
}

class _ConditionRadioButtonState extends State<ConditionRadioButton> {
  int RadioButtonValue = 0;
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    currentHeight = currentHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.only(
        top: currentHeight * 0.047,
        left: currentWidth * 0.00,
      ),
      child: RadioListTile(
          title: Text("J'ai lu et compris les informations des",
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 17 * (currentHeight / 922),
                  fontWeight: FontWeight.w300)),
          subtitle: InkWell(
              child: new Text('Conditions Générales',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Rubik',
                      fontSize: 17 * (currentHeight / 922),
                      fontWeight: FontWeight.w300)),
              onTap: () {}),
          value: 1,
          groupValue: RadioButtonValue,
          onChanged: (value) => setState(() {
                RadioButtonValue = 1;
              })),
    );
  }
}
