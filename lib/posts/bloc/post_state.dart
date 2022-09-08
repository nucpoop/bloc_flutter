part of 'post_bloc.dart';

enum PostStatus {initial, success, failure}

abstract class PostState extends Equatable {

  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReadchedMax = false,
});

  final PostStatus status;
  final List<Post> posts;
  final bool hasReadchedMax;

  PostState copyWith({
    PostStatus? status,

}){

}
}

class PostInitial extends PostState {
  @override
  List<Object> get props => [];
}
