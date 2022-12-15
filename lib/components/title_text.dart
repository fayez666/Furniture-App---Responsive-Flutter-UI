import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style:
            TextStyle(fontSize: defaultSize * 2, fontWeight: FontWeight.bold),
      ),
    );
  }
}
