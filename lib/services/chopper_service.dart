import 'package:chopper/chopper.dart';

part 'chopper_service.chopper.dart'; 

@ChopperApi()
abstract class PostService extends ChopperService {
  @Get(path: '/posts')
  Future<Response> fetchPosts();

  static PostService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$PostService()], 
      interceptors: [HttpLoggingInterceptor()],
      converter: JsonConverter(),
    );
    return _$PostService(client); 
  }
}
