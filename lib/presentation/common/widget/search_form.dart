import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchForm extends ConsumerStatefulWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends ConsumerState<SearchForm> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (!focusNode.hasFocus) {
      ref.read(postListControllerProvider.notifier)
        ..setPage(1)
        ..setQuery(controller.text.isEmpty ? null : controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(postListControllerProvider).query;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(height: 68, color: Colors.white),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              focusNode: focusNode,
              controller: controller..text = query ?? '',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: '検索ワードを入力',
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query?.isEmpty ?? true
                    ? null
                    : GestureDetector(
                        onTap: () {
                          ref.read(postListControllerProvider.notifier)
                            ..setPage(1)
                            ..setQuery(null);
                        },
                        child: const Icon(Icons.clear),
                      ),
              ),
              onSubmitted: (value) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.search,
            ),
          ),
        ),
      ],
    );
  }
}
