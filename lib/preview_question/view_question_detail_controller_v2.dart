import 'package:demo_tex_native/core/config/global_config.dart';
import 'package:demo_tex_native/core/config/injector.dart';
import 'package:demo_tex_native/services/bankquestion_service.dart';
import 'package:get/get.dart';

import '../models/question_model_v2.dart';

class ViewQuestionDetailControllerV2 extends GetxController {
  final _bankQuestionApiService = getIt.get<BankQuestionService>();
  final globalConfig = getIt.get<GlobalConfig>();
  final int questionId;
  final int? sourceId;
  final bool showOnWindow;

  ViewQuestionDetailControllerV2({
    required this.questionId,
    this.sourceId,
    this.showOnWindow = true,
  });

  RxList<int> questionIds = RxList();

  final RxInt currentQuestionIndex = 0.obs;
  Rx<int?> selectedQuestionId = Rx(null);

  Rx<QuestionModelV2?> selectedQuestionDetail = Rx(null);
  final RxBool loadingQuestionDetail = false.obs;
  Rx<int?> selectedQuestionIndex = Rx(null);
  Rx<String?> errorMsg = Rx(null);

  RxBool isEnableButton = true.obs;
  RxBool isImporting = false.obs;
  RxBool isDeleting = false.obs;

  @override
  void onInit() {
    super.onInit();
    selectedQuestionId.stream.listen((questionId) {
      if (questionId != null) {
        getQuestionDetail(questionId);
        if (!showOnWindow) {
          _updateQueryUrl(questionId: questionId);
        }
      }
    });
  }

  @override
  void onReady() {
    super.onReady();

    selectedQuestionId.value = questionId;
  }

  Future<void> getQuestionDetail(int questionId, {bool showLoading = true}) async {
    try {
      if (showLoading) {
        loadingQuestionDetail.value = true;
      }

      selectedQuestionId.value = questionId;
      final result = await _bankQuestionApiService.getQuestionDetailV2(
        questionId: questionId,
        aladanh: globalConfig.aladanh.value,
      );

      final question = result.question;
      selectedQuestionDetail.value = question;
    } catch (e) {
      // final failure = defaultFailure(e);
      // errorMsg.value = 'ID câu hỏi: $questionId\n${failure.description}';
      // EasyLoading.showError(failure.description);
      print('--- Error fetching question detail: $e');
    } finally {
      if (showLoading) {
        loadingQuestionDetail.value = false;
      }
    }
  }

  void refreshQuestionClassification() async {
    try {
      await getQuestionDetail(selectedQuestionDetail.value?.questionId ?? 0, showLoading: false);
    } catch (e) {
      print('--- Error refreshing question classification: $e');
    }
  }

  void _updateQueryUrl({int? questionId}) {}
}
