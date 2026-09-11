import 'package:demo_tex_native/injector.dart';
import 'package:demo_tex_native/my_service.dart';
import 'package:demo_tex_native/ocr_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const TestPreviewLatex());
}

class TestPreviewLatex extends StatelessWidget {
  const TestPreviewLatex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(controller: inputController),
                ),
                ElevatedButton(
                  onPressed: () {
                    sourceId.value = int.tryParse(inputController.text.trim()) ?? 0; // Reset the sourceId before fetching new preview
                    getSourcePreview();
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
            Divider(),
            Expanded(child: Text('c')),
          ],
        ),
      ),
    );
  }

  void getSourcePreview() async {
    try {
      final result = await getIt.get<OCRService>().fetchSourcePreviewV2(
        sourceId: sourceId.value,
      );
    } catch (e) {}
  }
}
