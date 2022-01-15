import 'package:flutter/cupertino.dart';
import 'package:flutter_qiita_client/presentation/common/state/page_state.dart';

class PageDispatcher {
  static Widget? _lastCachedChild;

  static Widget _cacheWidget(Widget child) {
    _lastCachedChild = child;
    return child;
  }

  static Widget dispatch({
    required PageState pageState,
    required Widget Function() builder,
  }) {
    return pageState.when(
      success: () => _cacheWidget(builder()),
      loading: () =>
          _lastCachedChild ?? const Center(child: CupertinoActivityIndicator()),
      error: (error) => _cacheWidget(Center(child: Text(error.toString()))),
    );
  }
}
