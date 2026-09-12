import 'package:demo_tex_native/core/config/global_config.dart';
import 'package:demo_tex_native/core/config/injector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'preview_question/view_detail_question_v2.dart';

class PreviewQuestionLms extends StatefulWidget {
  const PreviewQuestionLms({Key? key}) : super(key: key);

  @override
  _PreviewQuestionLmsState createState() => _PreviewQuestionLmsState();
}

class _PreviewQuestionLmsState extends State<PreviewQuestionLms> {
  TextEditingController inputController = TextEditingController();
  Rx<int> questionId = Rx<int>(0);

  RxBool loading = true.obs;
  final globalConfig = getIt.get<GlobalConfig>();
  Rx<String?> error = Rx(null);

  @override
  void initState() {
    super.initState();
    questionId.value = 25588820;
    inputController.text = questionId.value.toString();
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
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
                        labelText: 'Question ID',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      questionId.value = int.tryParse(inputController.text.trim()) ?? 0;
                    },
                    child: Text('View'),
                  ),

                  Spacer(),
                  Obx(() {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: globalConfig.aladanh.value,
                          onChanged: (value) {
                            globalConfig.aladanh.value = value ?? false;
                          },
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text('Aladanh Workspace'),
                      ],
                    );
                  }),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Obx(() {
                questionId.value;
                return ViewDetailQuestionV2(
                  key: ValueKey(DateTime.now().millisecondsSinceEpoch),
                  questionId: questionId.value,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
