import 'package:class_riverpod_mvvm/models/post.dart';
import 'package:class_riverpod_mvvm/repository/post_repository.dart';
import 'package:dio/dio.dart';

class PostRepositoryImpl implements PostRepository {
  final Dio _dio;

  // dio을 가져올 때 우리가 사용할 수 있는 방법은
  // 1. 생성자 주입을 통한 - 의존성을 수동으로 관리
  // 2. 리버팟을 활용한 관리 - x
  PostRepositoryImpl(this._dio);

  @override
  Future<Post> createPost(Post post) async {
    // 통신 관련 코드는 무조건 예외 처리 코드 습관화
    try {
      final response = await _dio.post(
        '/posts',
        data: post.toJson(),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        return Post.fromJson(response.data);
      } else {
        throw Exception('게시글 생성 실패');
      }
    } catch (e) {
      throw Exception('게시글 생성 중 오류 발생 : $e');
    }
  }

  @override
  Future<void> deletePost(int id) async {
    try {
      final response = await _dio.delete('/posts/${id}');
      if (response.statusCode != 200) {
        throw Exception('게시글 삭제 실패');
      }
    } catch (e) {
      throw Exception('게시글 삭제 중 오류 발생 : $e');
    }
  }

  @override
  Future<Post> fetchPostById(int id) async {
    try {
      final response = await _dio.get('/posts/${id}');
      if (response.statusCode == 200) {
        return Post.fromJson(response.data);
      } else {
        throw Exception('게시글 불러오기 실패');
      }
    } catch (e) {
      throw Exception('게시글 불러 오는 중 오류 발생: $e');
    }
  }

  @override
  Future<List<Post>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');
      if (response.statusCode == 200) {
        // [ '{userId : 홍길동, id: 1 ...}' , '' , '', '' ]
        List<dynamic> data = response.data;
        // [ 'Post(,,,)' , 'Post(,,,)' , 'Post(,,,)', 'Post(,,,)' ]
        return data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('게시글 불러오기 실패');
      }
    } catch (e) {
      throw Exception('게시글 불러 오는 중 오류 발생: $e');
    }
  }

  @override
  Future<Post> updatePost(Post post) async {
    try {
      final response = await _dio.put(
        '/posts/${post.id}',
        data: post.toJson(),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        return Post.fromJson(response.data);
      } else {
        throw Exception('게시글 수정 실패');
      }
    } catch (e) {
      throw Exception('게시글 수정 중 오류 발생 : $e');
    }
  }
}
