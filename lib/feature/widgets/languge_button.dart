import 'package:flutter/material.dart';
import 'package:flutter_social/common/untils/colours.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: const Color(0xff09141A),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: Colours.greenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text('English', style: TextStyle(color: Colours.backgroundLight),),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colours.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
