import 'package:demo_tex_native/core/theme/theme.dart';
import 'package:demo_tex_native/core/widgets/web_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_html_latex/flutter_html_latex.dart';

import 'package:get/get.dart';

import '../models/plan_model.dart';
import '../models/question_model_v2.dart';
import '../models/update_question_dto.dart';
import 'abcd_question_content.dart';
import 'item_question_fill_key.dart';
import 'item_question_plan.dart';

class QuestionForCheckV2 extends StatefulWidget {
  final QuestionModelV2 questionDetail;
  final int? index;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;
  final VoidCallback? onNext;
  final VoidCallback? onPrev;
  final VoidCallback? onRefreshClassification;
  final void Function(String readingTitle, String readingText)? onSaveReading;
  final void Function(String solutionText)? onSaveSolution;

  /// dto, showLoading
  final void Function(UpdateQuestionDto, bool?)? onSaveQuestion;
  final Widget Function()? onImportBtnBuilder;
  final Widget Function()? onDeleteBtnBuilder;

  const QuestionForCheckV2({
    super.key,
    required this.questionDetail,
    this.index,
    this.onAccept,
    this.onReject,
    this.onNext,
    this.onPrev,
    this.onRefreshClassification,
    this.onSaveReading,
    this.onSaveSolution,
    this.onSaveQuestion,
    this.onImportBtnBuilder,
    this.onDeleteBtnBuilder,
  });

  @override
  State<QuestionForCheckV2> createState() => _QuestionForCheckState();
}

class _QuestionForCheckState extends State<QuestionForCheckV2> {
  Rx<UpdateQuestionDto> _updateQuestionDto = Rx(
    UpdateQuestionDto(questionText: '', plans: [], answerKey: ''),
  );
  UpdateQuestionDto get updateQuestionDto => _updateQuestionDto.value;

  @override
  void initState() {
    super.initState();
    _updateQuestionDto.value = UpdateQuestionDto(
      questionText: widget.questionDetail.questionTextLatex ?? '',
      plans: widget.questionDetail.plans ?? [],
      answerKey: widget.questionDetail.answerKey ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.questionDetail.readingText.isNotEmpty) ...[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: HtmlWidget(
                                        widget.questionDetail.readingTitle,
                                        textStyle: WebTextTheme.baseStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.gray900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            editButton(
                              tooltip: 'Sửa Reading',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16, top: 16),
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Flexible(
                              child: HtmlWidget(
                                widget.questionDetail.readingText,
                                textStyle: WebTextTheme.baseStyle.copyWith(
                                  fontSize: 16,
                                  color: AppColors.gray800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 10.0,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
                      padding: EdgeInsets.only(top: 10),
                      child: _buildQuestionContentDetail(
                        widget.questionDetail,
                        index: widget.index,
                        selectKey: true,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: AppColors.gray200),
                          // bottom: BorderSide(color: AppColors.gray200),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: _bottom(),
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     Container(
                    //       padding: EdgeInsets.only(right: 16, bottom: 16),
                    //       child: SelectableText(
                    //         'ID: [${widget.questionDetail.questionId}]',
                    //         style: WebTextTheme.baseStyle.copyWith(
                    //           fontSize: 14,
                    //           color: AppColors.gray800,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 0).copyWith(bottom: 16),
                      decoration: BoxDecoration(
                        color: AppColors.answerBackgroundColor,
                        // borderRadius: BorderRadius.circular(6),
                        border: Border(bottom: BorderSide(color: AppColors.gray200)),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: HtmlLatex(
                                  widget.questionDetail.solutionTextLatexUi,
                                  style: WebTextTheme.baseStyle.copyWith(
                                    fontSize: 16.0,
                                  ),
                                  enableFallback: true,
                                  mathJaxSupported: false,
                                  primaryScaleInline: 1.18,
                                  primaryScaleBlock: 1.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionContentDetail(QuestionModelV2 question, {int? index, bool selectKey = false}) {
    return switch (question.questionTypeId) {
      0 => Obx(() {
        return AbcdQuestionContent(
          questionText: question.questionTextLatexUi,
          options: question.plans ?? [],
          index: index,
          answerKey: updateQuestionDto?.answerKey,
          onAnsKeyUpdated: selectKey
              ? (key) {
                  _updateQuestionDto.value = updateQuestionDto.copyWith(answerKey: key);

                  widget.onSaveQuestion?.call(
                    updateQuestionDto,
                    false,
                  );
                }
              : null,
        );
      }),
      1 => ItemQuestionFillKey(
        questionText: question.questionTextLatexUi,
        fillKey: '',
        index: index,
      ),
      2 => ItemQuestionPlan(
        questionText: question.questionTextLatexUi,
        plans: question.plans,
        index: index,
        showAction: true,
        onEditPlan: (plan, planIndex) {
          // showEditTrueFalsePlan(
          //   questionId: question.questionId ?? 0,
          //   initDto: plan,
          //   planIndex: planIndex,
          //   onSave: (newPlan) {
          //     List<PlanModel> updatedPlans = List.from(updateQuestionDto.plans);
          //     updatedPlans[planIndex] = newPlan;
          //     _updateQuestionDto.value = updateQuestionDto.copyWith(
          //       plans: updatedPlans,
          //     );

          //     widget.onSaveQuestion?.call(
          //       updateQuestionDto,
          //       false,
          //     );
          //   },
          // );
        },
        onSelectAnswer: (isCorrect, index) {
          List<PlanModel> updatedPlans = List.from(updateQuestionDto.plans);
          updatedPlans[index] = updatedPlans[index].copyWith(isCorrect: isCorrect);
          _updateQuestionDto.value = updateQuestionDto.copyWith(
            plans: updatedPlans,
          );

          widget.onSaveQuestion?.call(
            updateQuestionDto,
            false,
          );
        },
      ),

      7 => ItemQuestionFillKey(
        questionText: question.questionTextLatexUi,
        fillKey: '',
        index: index,
      ),
      _ => const SizedBox.shrink(),
    };
  }

  void _showEditorQuestion({
    required int questionId,
    required UpdateQuestionDto initDto,
  }) {
    // if (widget.questionDetail.questionTypeId == 0) {
    //   showAbcdEditor(
    //     questionId: questionId,
    //     initDto: updateQuestionDto,
    //     onSave: (newDto) {
    //       widget.onSaveQuestion?.call(
    //         newDto,
    //         null,
    //       );
    //     },
    //   );
    // } else if (widget.questionDetail.questionTypeId == 1) {
    //   showFillKeyEditor(
    //     questionId: questionId,
    //     initDto: updateQuestionDto,
    //     onSave: (newDto) {
    //       widget.onSaveQuestion?.call(
    //         newDto,
    //         null,
    //       );
    //     },
    //   );
    // } else if (widget.questionDetail.questionTypeId == 2) {
    //   showEditQuestionText(
    //     questionId: questionId,
    //     initText: updateQuestionDto.questionText,
    //     onSave: (newText) {
    //       _updateQuestionDto.value = updateQuestionDto.copyWith(questionText: newText);
    //       widget.onSaveQuestion?.call(
    //         _updateQuestionDto.value,
    //         null,
    //       );
    //     },
    //   );
    // } else {
    //   showEditQuestionText(
    //     questionId: questionId,
    //     initText: updateQuestionDto.questionText,
    //     onSave: (newText) {
    //       _updateQuestionDto.value = updateQuestionDto.copyWith(questionText: newText);
    //       widget.onSaveQuestion?.call(
    //         _updateQuestionDto.value,
    //         null,
    //       );
    //     },
    //   );
    // }
  }

  Widget editButton({required VoidCallback onTap, String? tooltip}) {
    return WebButton(
      onTap: onTap,
      child: Tooltip(
        message: tooltip ?? 'Sửa',
        decoration: BoxDecoration(
          color: AppColors.gray900,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Container(
          height: 20,
          width: 20,
          child: Icon(Icons.edit), // svgIcon(AppSvgs.edit20),
        ),
      ),
    );
  }

  Widget _bottom() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                onTap: null,
                'ID: ${widget.questionDetail.questionId ?? ''}',
                style: WebTextTheme.baseStyle.copyWith(color: AppColors.gray800, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Đáp án: ${widget.questionDetail.answerKey ?? ''}',
                style: WebTextTheme.baseStyle.copyWith(
                  color: AppColors.gray800,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
