import 'package:demo_tex_native/injector.dart';
import 'package:demo_tex_native/my_service.dart';
import 'package:demo_tex_native/ocr_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:flutter_markdown_plus_latex/flutter_markdown_plus_latex.dart';
import 'package:get/get.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:markdown/markdown.dart' as md;
import 'markdown_to_html.dart';
import 'models/source_preview_result.dart';
import 'package:flutter_html_latex/flutter_html_latex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  // await TeXRenderingServer.start();
  await FlutterHtmlLatexRuntime.ensureInitialized();
  runApp(const TestPreviewLatex());
}

class TestPreviewLatex extends StatelessWidget {
  const TestPreviewLatex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,

          elevation: 0,
        ),
      ),
      home: PreviewLatex(),
    );
  }
}

class PreviewLatex extends StatefulWidget {
  const PreviewLatex({super.key});

  @override
  State<PreviewLatex> createState() => _PreviewLatexState();
}

class _PreviewLatexState extends State<PreviewLatex> {
  TextEditingController inputController = TextEditingController();
  Rx<int> sourceId = Rx<int>(0);
  Rx<SourcePreviewResult?> sourcePreviewResult = Rx<SourcePreviewResult?>(null);
  RxBool loading = true.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inputController.text = '25592143';
    sourceId.value = int.tryParse(inputController.text.trim()) ?? 0;
    getSourcePreview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Source ID',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      sourceId.value = int.tryParse(inputController.text.trim()) ?? 0; // Reset the sourceId before fetching new preview
                      getSourcePreview();
                    },
                    child: Text('View'),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Obx(() {
                if (loading.value) {
                  return Center(child: CircularProgressIndicator());
                }
                final result = sourcePreviewResult.value;
                if (result == null) {
                  return Text('No preview available');
                }
                return _markdownItem(result.rawMarkdown);
              }),
            ),
          ],
        ),
      ),
    );
  }

  void getSourcePreview() async {
    try {
      if (sourceId.value == 0) {
        return;
      }
      loading.value = true;
      final result = await getIt.get<OCRService>().fetchSourcePreviewV2(
        sourceId: sourceId.value,
      );
      sourcePreviewResult.value = result;
    } catch (e) {
      print('Error fetching source preview: $e');
    } finally {
      loading.value = false;
    }
  }

  Widget _markdownItem(String? rawMarkdown) {
    final html = convertMarkdownToHtml(rawMarkdown ?? '');
    print('--- html:$html ');
    return HtmlLatex(
      // rawMarkdown ?? '',
      html,
      style: TextStyle(
        fontSize: 16.0,
      ),
      mathJaxSupported: true,

      enableFallback: true,
      config: LatexHtmlWidgetFactoryConfig(
        baseFontSize: 16.0,
      ),
    );
  }
}
