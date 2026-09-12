import 'package:demo_tex_native/test_preview_latex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html_latex/flutter_html_latex.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/config/injector.dart';
import 'preview_question_lms.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  await FlutterHtmlLatexRuntime.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/preview_latex': (context) => PreviewLatex(),
        '/preview_question_lms': (context) => const PreviewQuestionLms(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/preview_latex',
                );
              },
              child: Text('Preview Latex'),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/preview_question_lms',
                );
              },
              child: Text('Preview question LMS'),
            ),
          ],
        ),
      ),
    );
  }
}
