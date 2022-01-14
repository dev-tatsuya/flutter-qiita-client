import 'package:flutter/cupertino.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LastIndicator extends StatelessWidget {
  const LastIndicator(this.onVisible, {Key? key}) : super(key: key);

  final VoidCallback onVisible;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('for detect visibility'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.9) {
          onVisible();
        }
      },
      child: const Padding(
        padding: EdgeInsets.only(top: 12, bottom: 12),
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
