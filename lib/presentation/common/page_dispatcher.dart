import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/common/state/page_state.dart';

class PageDispatcher {
  static Widget dispatch({
    required PageState pageState,
    required Widget Function() builder,
  }) {
    return pageState.when(
      success: () => builder(),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      error: (error) => Center(child: Text(error.toString())),
    );
  }
}
