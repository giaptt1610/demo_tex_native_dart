import 'package:demo_tex_native/injector.dart';
import 'package:demo_tex_native/ocr_service.dart';
import 'package:demo_tex_native/web_http_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  RxBool aladanh = false.obs;
  Rx<String?> error = Rx(null);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inputController.text = '25592141';
    sourceId.value = int.tryParse(inputController.text.trim()) ?? 0;
    getSourcePreview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
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
                      sourceId.value = int.tryParse(inputController.text.trim()) ?? 0;
                      getSourcePreview();
                    },
                    child: Text('View'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      sourceId.value = 25324229;
                      getSourcePreview();
                    },
                    child: Text('Toán'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      sourceId.value = 25554575;
                      getSourcePreview();
                    },
                    child: Text('Lý'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      sourceId.value = 25471965;
                      getSourcePreview();
                    },
                    child: Text('Hóa'),
                  ),
                  Spacer(),
                  Obx(() {
                    return Checkbox(
                      value: aladanh.value,
                      onChanged: (value) {
                        aladanh.value = value ?? false;
                      },
                    );
                  }),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Obx(() {
                if (loading.value) {
                  return Center(child: CircularProgressIndicator());
                }
                if (error.value != null) {
                  return Text(
                    'Error: ${error.value}',
                    style: TextStyle(color: Colors.red),
                  );
                }
                final result = sourcePreviewResult.value;
                if (result == null) {
                  return Text('No preview available');
                }

                return SingleChildScrollView(
                  child: _markdownItem(result.rawMarkdown),
                );
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
      error.value = null;

      final result = await getIt.get<OCRService>().fetchSourcePreviewV2(
        sourceId: sourceId.value,
        aladanh: aladanh.value,
      );
      print('--- getSourcePreview for source:${sourceId.value} ');
      sourcePreviewResult.value = result;
    } on ApiException catch (e) {
      print('--- Error fetching source preview: ${e.runtimeType}');
      error.value = e.data['message'] ?? 'Unknown error';
      loading.value = false;
    } finally {
      loading.value = false;
    }
  }

  Widget _markdownItem(String? rawMarkdown) {
    final html = convertMarkdownToHtmlLatex(rawMarkdown ?? '');
    return HtmlLatex(
      html,
      style: TextStyle(
        fontSize: 16.0,
      ),
      mathJaxSupported: false,
      enableFallback: true,
      // config: LatexHtmlWidgetFactoryConfig(
      //   baseFontSize: 16.0,
      // ),
      fallbackScaleInline: 0.84,
      fallbackScaleBlock: 0.90,
      fallbackVerticalPadding: 1.5,
    );
  }
}
