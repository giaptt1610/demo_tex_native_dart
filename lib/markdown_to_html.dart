import 'package:markdown/markdown.dart' as md;

String convertMarkdownToHtml(String markdown) {
  final mathExpressions = <_MathExpression>[];
  final codeBlocks = <String>[];

  var text = markdown;

  // ============================================================
  // 0. Escape leading "N)"/"N." so they aren't parsed as ordered-list markers
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(r'^(\s*)(\d+)([.)])(\s)', multiLine: true),
    (match) => '${match.group(1)}${match.group(2)}\\${match.group(3)}${match.group(4)}',
  );

  // ============================================================
  // 1. Protect fenced code blocks
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(r'```[\s\S]*?```'),
    (match) {
      final index = codeBlocks.length;

      codeBlocks.add(match.group(0)!);

      return 'CODEBLOCK${index}XYZ';
    },
  );

  // ============================================================
  // 2. Extract $$ ... $$ block math
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(r'\$\$([\s\S]*?)\$\$'),
    (match) {
      final index = mathExpressions.length;

      mathExpressions.add(
        _MathExpression(
          latex: match.group(1)!.trim(),
          isBlock: true,
        ),
      );

      return '\n\nMATHBLOCK${index}XYZ\n\n';
    },
  );

  // ============================================================
  // 3. Extract \[ ... \] block math
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(r'\\\[([\s\S]*?)\\\]'),
    (match) {
      final index = mathExpressions.length;

      mathExpressions.add(
        _MathExpression(
          latex: match.group(1)!.trim(),
          isBlock: true,
        ),
      );

      return '\n\nMATHBLOCK${index}XYZ\n\n';
    },
  );

  // ============================================================
  // 4. Extract $ ... $ inline math
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(
      r'(?<!\$)\$(?!\$)([\s\S]*?)(?<!\$)\$(?!\$)',
    ),
    (match) {
      final index = mathExpressions.length;

      mathExpressions.add(
        _MathExpression(
          latex: match.group(1)!.trim(),
          isBlock: false,
        ),
      );

      return 'MATHINLINE${index}XYZ';
    },
  );

  // ============================================================
  // 5. Extract \( ... \) inline math
  // ============================================================

  text = text.replaceAllMapped(
    RegExp(r'\\\(([\s\S]*?)\\\)'),
    (match) {
      final index = mathExpressions.length;

      mathExpressions.add(
        _MathExpression(
          latex: match.group(1)!.trim(),
          isBlock: false,
        ),
      );

      return 'MATHINLINE${index}XYZ';
    },
  );

  // ============================================================
  // 6. Markdown -> HTML
  // ============================================================

  var html = md.markdownToHtml(
    text,
    extensionSet: md.ExtensionSet.gitHubFlavored,
    encodeHtml: false,
  );

  // ============================================================
  // 7. Restore math
  // ============================================================

  for (var i = 0; i < mathExpressions.length; i++) {
    final expression = mathExpressions[i];

    final placeholder = expression.isBlock ? 'MATHBLOCK${i}XYZ' : 'MATHINLINE${i}XYZ';

    final replacement = expression.isBlock ? '\\[${expression.latex}\\]' : '\\(${expression.latex}\\)';

    html = html.replaceAll(
      placeholder,
      replacement,
    );
  }

  // ============================================================
  // 8. Restore code blocks
  // ============================================================

  for (var i = 0; i < codeBlocks.length; i++) {
    html = html.replaceAll(
      'CODEBLOCK${i}XYZ',
      codeBlocks[i],
    );
  }

  // ============================================================
  // 9. Preserve newlines
  // ============================================================

  html = _preserveNewLines(html);

  return html;
}

String _preserveNewLines(String html) {
  // Không xử lý newline bên trong:
  // <pre>...</pre>
  // <code>...</code>
  // <style>...</style>
  // <script>...</script>

  final protected = <String>[];

  html = html.replaceAllMapped(
    RegExp(
      r'<(pre|code|style|script|table)\b[^>]*>[\s\S]*?</\1>',
      caseSensitive: false,
    ),
    (match) {
      final index = protected.length;

      protected.add(match.group(0)!);

      return 'PROTECTED${index}XYZ';
    },
  );

  // Newline còn lại trong HTML -> <br>
  html = html.replaceAll('\n', '<br>');

  // Restore
  for (var i = 0; i < protected.length; i++) {
    html = html.replaceAll(
      'PROTECTED${i}XYZ',
      protected[i],
    );
  }

  return html;
}

class _MathExpression {
  final String latex;
  final bool isBlock;

  const _MathExpression({
    required this.latex,
    required this.isBlock,
  });
}
