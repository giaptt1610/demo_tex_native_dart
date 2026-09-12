import 'package:flutter/material.dart';

import 'question_content.dart';

class ItemQuestionFillKey extends StatelessWidget {
  final String questionText;
  final String fillKey;
  final int? index;

  const ItemQuestionFillKey({
    required this.questionText,
    required this.fillKey,
    this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: QuestionContent(
                    questionContent: questionText,
                    index: index != null ? '$index' : null,
                  ),
                ),
              ],
            ),
          ),
          // _questionKey(fillKey, context),
        ],
      ),
    );
  }
}
