import 'package:collection/collection.dart';
import 'package:demo_tex_native/core/theme/theme.dart';
import 'package:demo_tex_native/core/widgets/web_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html_latex/flutter_html_latex.dart';

import '../models/plan_model.dart';
import 'measure_size.dart';
import 'plan_true_button.dart';
import 'question_content.dart';

class ItemQuestionPlan extends StatefulWidget {
  final String questionText;
  final List<PlanModel> plans;

  final int? index;
  final bool? showAction;

  /// plan, index
  final void Function(PlanModel, int)? onEditPlan;

  /// quick select true/false answer, isCorrect, index
  final void Function(bool isCorrect, int index)? onSelectAnswer;

  const ItemQuestionPlan({
    required this.questionText,
    required this.plans,
    this.index,
    super.key,
    this.showAction,
    this.onEditPlan,
    this.onSelectAnswer,
  });

  @override
  State<ItemQuestionPlan> createState() => _ItemQuestionPlanState();
}

class _ItemQuestionPlanState extends State<ItemQuestionPlan> {
  List<GlobalKey<PlanTrueFalseButtonState>> planTrueButtonKeys = [];
  List<GlobalKey<PlanTrueFalseButtonState>> planFalseButtonKeys = [];

  @override
  void initState() {
    super.initState();
    planTrueButtonKeys = List.generate(
      widget.plans.length,
      (index) => GlobalKey<PlanTrueFalseButtonState>(),
    );
    planFalseButtonKeys = List.generate(
      widget.plans.length,
      (index) => GlobalKey<PlanTrueFalseButtonState>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: QuestionContent(
              questionContent: widget.questionText,
              index: widget.index != null ? '${widget.index}' : null,
            ),
          ),
          const SizedBox(height: 16),
          _table(context),
        ],
      ),
    );
  }

  Widget _table(BuildContext context) {
    Map<int, TableColumnWidth> columnWidths = widget.showAction == true
        ? {
            0: const FlexColumnWidth(),
            1: const FixedColumnWidth(35.0),
            2: const FixedColumnWidth(35.0),
            3: const FixedColumnWidth(50.0),
          }
        : {
            0: const FlexColumnWidth(),
            1: const FixedColumnWidth(35.0),
            2: const FixedColumnWidth(35.0),
          };

    return Container(
      padding: const EdgeInsets.all(15),
      child: Table(
        border: TableBorder.all(color: AppColors.gray200),
        columnWidths: columnWidths,
        children: [
          TableRow(
            children: [
              Container(
                height: 34,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: AppColors.gray200,
                ),
                padding: const EdgeInsets.only(left: 12),
                child: const Text(
                  'Mệnh đề',
                  style: TextStyle(color: AppColors.gray800),
                ),
              ),
              Container(
                height: 34,
                width: 34,
                decoration: const BoxDecoration(
                  color: AppColors.green500,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Đ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 34,
                width: 34,
                decoration: const BoxDecoration(
                  color: AppColors.red600,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'S',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              if (widget.showAction == true)
                Container(
                  height: 34,
                  decoration: const BoxDecoration(
                    color: AppColors.accentColor,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sửa',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
            ],
          ),
          ...widget.plans.mapIndexed(
            (index, e) => TableRow(
              children: [
                Container(
                  // margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.transparent,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MeasureSize(
                        onChange: (size) {
                          if (size != null) {
                            planTrueButtonKeys[index].currentState?.setHeight(size.height);
                            planFalseButtonKeys[index].currentState?.setHeight(size.height);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: HtmlWidget(
                            '<strong>${indexToAlphabet(index).toLowerCase()}</strong>. ${e.content}',
                            textStyle: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                WebButton(
                  onTap: widget.onSelectAnswer != null ? () => widget.onSelectAnswer?.call(true, index) : null,
                  child: PlanTrueFalseButton(
                    key: planTrueButtonKeys[index],
                    isCorrect: e.isCorrect,
                    isTrue: true,
                  ),
                ),
                WebButton(
                  onTap: widget.onSelectAnswer != null ? () => widget.onSelectAnswer?.call(false, index) : null,
                  child: PlanTrueFalseButton(
                    key: planFalseButtonKeys[index],
                    isCorrect: e.isCorrect,
                    isTrue: false,
                  ),
                ),
                if (widget.showAction == true)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 34.0,
                          minWidth: 34.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            widget.onEditPlan?.call(e, index);
                          },
                          child: const Icon(
                            Icons.edit,
                            size: 18,
                            color: AppColors.accentColor,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String indexToAlphabet(int index) {
    if (index < 0 || index >= alphabetLetters.length) {
      return '';
    }

    return alphabetLetters[index];
  }
}

const alphabetLetters = <String>[
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
];
