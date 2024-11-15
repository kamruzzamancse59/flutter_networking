import 'package:chopper/chopper.dart';

part 'chopper_service.chopper.dart'; // Required for Chopper code generation

@ChopperApi()
abstract class PostService extends ChopperService {
  @Get(path: '/posts')
  Future<Response> fetchPosts();

  static PostService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$PostService()], // This is generated; ensure this is correct
      interceptors: [HttpLoggingInterceptor()],
      converter: JsonConverter(),
    );
    return _$PostService(client); // This is also generated
  }
}
