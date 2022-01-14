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
                _headerArea(),
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

  Widget _headerArea() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Image.network(
            post.user.profileImageUrl,
            width: 32,
            height: 32,
            errorBuilder: (context, error, st) {
              return Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  border: Border.all(color: Colors.lightGreen),
                ),
              );
            },
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
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '${post.createdAt.year}年'
                '${post.createdAt.month}月'
                '${post.createdAt.day}日作成',
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
        Text('${post.likesCount}'),
      ],
    );
  }
}
