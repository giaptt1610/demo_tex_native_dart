import 'package:collection/collection.dart';
import 'package:demo_tex_native/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html_latex/flutter_html_latex.dart';

import '../models/plan_model.dart';
import 'question_content.dart';

class AbcdQuestionContent extends StatelessWidget {
  final String questionText;
  final List<PlanModel> options;
  final int? index;
  final void Function(String answerKey)? onAnsKeyUpdated;
  final String? answerKey;

  const AbcdQuestionContent({
    super.key,
    required this.questionText,
    required this.options,
    this.index,
    this.onAnsKeyUpdated,
    this.answerKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Text('Câu ${index ?? 0 + 1}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        // const SizedBox(height: 8),
        QuestionContent(
          questionContent: questionText,
          index: index != null ? '$index' : null,
        ),
        const SizedBox(height: 16),
        _buildOptionsArea(options),
      ],
    );
  }

  Widget _buildOptionsArea(List<PlanModel> options) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: options.mapIndexed((index, opt) {
        return _buildOptionItem(['A', 'B', 'C', 'D'][index % 4], opt.optionTextLatexUi);
      }).toList(),
    );
  }

  Widget _buildOptionItem(String label, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onAnsKeyUpdated != null ? () => onAnsKeyUpdated!(label) : null,
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (onAnsKeyUpdated != null)
                RadioGroup<String>(
                  groupValue: answerKey,
                  onChanged: (value) {
                    onAnsKeyUpdated!(label);
                  },
                  child: Radio<String>(
                    value: label,
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return AppColors.primary600;
                      }
                      return Colors.grey;
                    }),
                  ),
                ),
              Text(
                '$label.',
                style: WebTextTheme.baseStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.gray800,
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: HtmlLatex(
                        text,
                        style: WebTextTheme.baseStyle.copyWith(
                          fontSize: 16,
                        ),
                        mathJaxSupported: false,
                        enableFallback: true,
                        primaryScaleInline: 1.18,
                        primaryScaleBlock: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
