import 'package:flutter_qiita_client/presentation/common/state/page_state.dart';
import 'package:flutter_qiita_client/presentation/post/connected_post_list_page.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_controller.dart';
import 'package:flutter_qiita_client/presentation/post/state/post_list_state.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../flutter_test_config.dart';
import '../mock/model/qiita_post.dart';

void main() {
  testGoldens('ConnectedPostListPage', (tester) async {
    final state = PostListState(
      posts: mockQiitaPosts,
      pageState: const PageStateSuccess(),
    );

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: TestDevice.all)
      ..addScenario(
        widget: ProviderScope(
          overrides: [
            postListControllerProvider.overrideWithValue(
                PostListController.withDefaultValue(
                    state, ProviderContainer().read)),
          ],
          child: materialWrapper(
            const ConnectedPostListPage(),
          ),
        ),
        name: 'default',
      );

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'ConnectedPostListPage');
  });
}
