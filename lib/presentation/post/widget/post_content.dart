import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/domain/model/qiita_post.dart';

class PostContent extends StatelessWidget {
  const PostContent(this.post, {Key? key}) : super(key: key);

  final QiitaPost post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headerArea(context),
                const SizedBox(height: 4),
                _titleArea(),
                const SizedBox(height: 4),
                _tagsArea(),
                const SizedBox(height: 8),
                _likesCountArea(),
              ],
            ),
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }

  Widget _headerArea(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: post.user.profileImageUrl.isNotEmpty
              ? Image.network(
                  post.user.profileImageUrl,
                  width: 32,
                  height: 32,
                  errorBuilder: (context, error, st) {
                    return Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32)),
                        border: Border.all(color: Colors.lightGreen),
                      ),
                    );
                  },
                )
              : Image.asset(
                  'assets/images/logo_flutter.png',
                  width: 32,
                  height: 32,
                ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  '@${post.user.id}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Inter'),
                ),
              ),
              const SizedBox(width: 4),
              RichText(
                text: TextSpan(
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 13),
                  children: [
                    TextSpan(
                      text: '${post.createdAt.year}',
                      style: const TextStyle(fontFamily: 'Inter'),
                    ),
                    const TextSpan(text: '年'),
                    TextSpan(
                      text: '${post.createdAt.month}',
                      style: const TextStyle(fontFamily: 'Inter'),
                    ),
                    const TextSpan(text: '月'),
                    TextSpan(
                      text: '${post.createdAt.day}',
                      style: const TextStyle(fontFamily: 'Inter'),
                    ),
                    const TextSpan(text: '日作成'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _titleArea() {
    return Text(
      post.title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _tagsArea() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...post.tags.map(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.lightGreen),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  child: Text(
                    e.name,
                    style: const TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _likesCountArea() {
    return Row(
      children: [
        const SizedBox(width: 4),
        const Icon(Icons.thumb_up_outlined, size: 16),
        const SizedBox(width: 4),
        Text('${post.likesCount}', style: const TextStyle(fontFamily: 'Inter')),
      ],
    );
  }
}
