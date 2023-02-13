import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  SearchFormState createState() => SearchFormState();
}

class SearchFormState extends ConsumerState<SearchBar> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(postListNotifierProvider).query;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(height: 60, color: Colors.white),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              controller: controller..text = query ?? '',
              textInputAction: TextInputAction.search,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: 'キーワードを入力',
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query?.isEmpty ?? true
                    ? null
                    : GestureDetector(
                        onTap: () {
                          ref.read(postListNotifierProvider.notifier)
                            ..setPage(1)
                            ..setQuery(null);
                        },
                        child: const Icon(Icons.clear),
                      ),
              ),
              onSubmitted: (value) {
                ref.read(postListNotifierProvider.notifier)
                  ..setPage(1)
                  ..setQuery(value.isEmpty ? null : value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
