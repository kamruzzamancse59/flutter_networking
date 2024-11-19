

part of 'chopper_service.dart';


class _$PostService extends PostService {
  _$PostService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostService;

  @override
  Future<Response<dynamic>> fetchPosts() {
    final $url = '/posts';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
