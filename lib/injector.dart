import 'package:demo_tex_native/my_service.dart';
import 'package:demo_tex_native/ocr_service.dart';
import 'package:demo_tex_native/web_http_client.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<http.Client>(() => http.Client());
  getIt.registerFactory<WebHttpClient>(
    () => WebHttpClient(
      getIt<http.Client>(),
      token: 'your_token_here',
    ),
  );

  getIt.registerFactory<MyService>(
    () => MyService(
      getIt<WebHttpClient>(),
      'https://jsonplaceholder.typicode.com/',
    ),
  );

  /// 'X-Api-Key': 'bicnR2vkY6iQWer2Le7q',
  getIt.registerFactory<OCRService>(
    () => OCRService(
      getIt<WebHttpClient>()..setHeaders({'X-Api-Key': 'bicnR2vkY6iQWer2Le7q'}),
      'https://x1-api.moon.vn:8027',
    ),
  );
}
