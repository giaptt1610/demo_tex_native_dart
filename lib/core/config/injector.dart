import 'package:demo_tex_native/services/bankquestion_service.dart';
import 'package:demo_tex_native/services/ocr_service.dart';
import 'package:demo_tex_native/core/http/web_http_client.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

import 'global_config.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<http.Client>(() => http.Client());

  const x1Api = 'x1api';
  const bankQuestion = 'bankquestion';
  getIt.registerSingleton<WebHttpClient>(
    WebHttpClient(
      getIt<http.Client>(),
      token: 'your_token_here',
    ),
    instanceName: x1Api,
  );

  getIt.registerSingleton<WebHttpClient>(
    WebHttpClient(
      getIt<http.Client>(),
      token: 'your_token_here',
    ),
    instanceName: bankQuestion,
  );

  getIt.registerSingleton(
    GlobalConfig(
      bankQuestionClient: getIt.get<WebHttpClient>(instanceName: bankQuestion),
      x1ApiClient: getIt.get<WebHttpClient>(instanceName: x1Api),
    ),
  );

  /// 'X-Api-Key': 'bicnR2vkY6iQWer2Le7q',
  getIt.registerFactory<OCRService>(
    () => OCRService(
      getIt.get<WebHttpClient>(instanceName: x1Api)..setHeaders({'X-Api-Key': 'bicnR2vkY6iQWer2Le7q'}),
      'https://x1-api.moon.vn:8027',
    ),
  );

  getIt.registerFactory<BankQuestionService>(
    () => BankQuestionService(
      getIt.get<WebHttpClient>(instanceName: bankQuestion),
      'https://bankquestionapi.moon.vn:6443',
    ),
  );
}
