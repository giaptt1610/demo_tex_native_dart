import 'package:flutter/cupertino.dart';
import 'package:flutter_html_latex/flutter_html_latex.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class QuestionContent extends StatelessWidget {
  final String questionContent;
  final String? index;

  const QuestionContent({
    super.key,
    required this.questionContent,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return HtmlLatex(
      '${index != null ? "<strong>$index.</strong> " : ""} $questionContent',
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
      ),
      mathJaxSupported: false,
      enableFallback: true,
      primaryScaleInline: 1.18,
      primaryScaleBlock: 1.0,
    );
  }
}
