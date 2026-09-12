import 'package:demo_tex_native/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'question_for_check_v2.dart';
import '../core/widgets/spin_loadingg.dart';
import 'view_question_detail_controller_v2.dart';

class ViewDetailQuestionV2 extends StatefulWidget {
  final int questionId;
  final int? sourceId;
  final bool showOnWindow;

  final bool? enableButton;

  final VoidCallback? onDone;
  final VoidCallback? onSuccess;

  const ViewDetailQuestionV2({
    Key? key,
    required this.questionId,
    this.sourceId,
    this.onDone,
    this.onSuccess,
    this.showOnWindow = false,
    this.enableButton,
  }) : super(key: key);

  @override
  _ViewDetailQuestionV2State createState() => _ViewDetailQuestionV2State();
}

class _ViewDetailQuestionV2State extends State<ViewDetailQuestionV2> {
  late ViewQuestionDetailControllerV2 _controller;

  String get controllerTag => 'ViewDetailQuestionV2_${widget.questionId}';

  @override
  void initState() {
    super.initState();
    _controller = Get.isRegistered<ViewQuestionDetailControllerV2>(tag: controllerTag)
        ? Get.find<ViewQuestionDetailControllerV2>(tag: controllerTag)
        : ViewQuestionDetailControllerV2(
            sourceId: widget.sourceId,
            questionId: widget.questionId,
            showOnWindow: widget.showOnWindow,
          );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      tag: controllerTag,
      builder: (_) {
        return Container(
          child: Obx(() {
            if (_controller.loadingQuestionDetail.value) {
              return const SpinLoadingg();
            }

            if (_controller.errorMsg.value != null) {
              return Container(
                alignment: Alignment.center,
                child: SelectableText(
                  _controller.errorMsg.value ?? 'Tải dữ liệu thất bại, vui lòng thử lại',
                  style: WebTextTheme.baseStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.red600,
                  ),
                ),
              );
            }

            if (_controller.selectedQuestionDetail.value == null) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  'Tải dữ liệu thất bại, vui lòng thử lại',
                  style: WebTextTheme.baseStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray900,
                  ),
                ),
              );
            }

            _controller.questionIds.value;
            final isEnable = widget.enableButton ?? _controller.isEnableButton.value;

            return QuestionForCheckV2(
              questionDetail: _controller.selectedQuestionDetail.value!,
              index: (_controller.selectedQuestionIndex.value ?? 0) + 1,
              onRefreshClassification: () {
                _controller.refreshQuestionClassification();
              },
            );
          }),
        );
      },
    );
  }
}
