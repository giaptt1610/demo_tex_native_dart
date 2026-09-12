import 'package:demo_tex_native/core/tokens.dart';
import 'package:get/get.dart';

import '../http/web_http_client.dart';

class GlobalConfig {
  final WebHttpClient bankQuestionClient;
  final WebHttpClient x1ApiClient;
  RxBool aladanh = false.obs;

  GlobalConfig({
    required this.bankQuestionClient,
    required this.x1ApiClient,
  }) {
    aladanh.stream.listen((value) {
      // Handle changes to the aladanh value here
      bankQuestionClient.setHeaders({'Authorization': 'Bearer ${value ? aladanhToken : pToken}'});
      // print('Bank question client headers updated: ${bankQuestionClient.headers}');
    });

    bankQuestionClient.setHeaders({'Authorization': 'Bearer ${aladanh.value ? aladanhToken : pToken}'});
  }
}
