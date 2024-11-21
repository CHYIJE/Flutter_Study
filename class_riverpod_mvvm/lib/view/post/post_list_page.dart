import 'package:class_riverpod_mvvm/models/post.dart';
import 'package:class_riverpod_mvvm/providers/state_noti_provider/post_list_view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostListPage extends ConsumerWidget {
  const PostListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 게시글에 리스트 화면을 구현해야한다.
    // 뷰 모델을 관리하는 프롶바이더를 호출하는데 계속 관찰하는 입장이다.
    //final postList = ref.watch(postListViewModelProvider);
    final postListState = ref.watch(postListViewModelProvider);  // 수정된 부분
    return Scaffold(
      appBar: AppBar(
        title: Text('게시글 목록 화면'),
      ),
      body: postListState.isEmpty
          ? Center(child: Text('게시글이 존재하지 않습니다.'))
          : NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                // 스크롤이 끝에 도달하면 더 많은 게시글을 불러오는 함수 호출
                if (!scrollInfo.metrics.atEdge &&
                    scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                  ref.read(postListViewModelProvider.notifier).fetchPosts();
                }
                return false;
              },
              child: ListView.separated(
                itemBuilder: (context, index) {
                  Post post = postListState[index];
                  return ListTile(
                    title: Text(
                      post.title,
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                    subtitle: Text(post.body),
                    trailing: IconButton(
                      onPressed: () async {
                        bool confirm = await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('삭제'),
                            content: Text('${post.title} 를 삭제하시겠습니까?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Text('취소')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  child: Text('확인'))
                            ],
                          ),
                        );
                        // 뷰 모델에 접근해서 deletPost() 메서드를 호출해야한다.
                        // 상태를 그냥 보는 것은 직접 접근이 가능하다.
                        // 해당하는 프로바이더에 상태변경 요청은 창고 관리자한테 의뢰해야한다.
                        if (confirm) {
                          await ref
                              .read(postListViewModelProvider.notifier)
                              .deletePost(post.id!);

                          // 삭제 완료 후 스낵바로 피드백 제공
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('삭제 완료')));
                        }
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                ),
                itemCount: postListState.length,
              ),
            ),
    );
  }
}
