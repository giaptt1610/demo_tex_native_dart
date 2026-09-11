// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' as assetBundle;
// import 'dart:convert';
// import 'package:markdown/markdown.dart' as md;
// import 'package:flutter_markdown_plus_latex/flutter_markdown_plus_latex.dart';
// import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   runApp(
//     MaterialApp(
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: TeXViewListExample(),
//     ),
//   );
// }

// class Comment {
//   final String solutionText;
//   final String styleCode;

//   Comment({
//     required this.solutionText,
//     required this.styleCode,
//   });

//   factory Comment.fromJson(Map<String, dynamic> json) {
//     return Comment(
//       solutionText: json['solutionText'] as String,
//       styleCode: json['styleCode'] as String,
//     );
//   }
// }

// /// Demonstrates syncing scroll between a [TeXView] and an outer [ListView]
// /// via [TeXViewController], using a 0.0-1.0 progress ratio so it works even
// /// though the two panes have very different content heights.
// class TeXViewListExample extends StatefulWidget {
//   const TeXViewListExample({super.key});

//   @override
//   State<TeXViewListExample> createState() => _TeXViewListExampleState();
// }

// class _TeXViewListExampleState extends State<TeXViewListExample> {
//   // Guards against the two listeners bouncing scroll updates off each other.
//   List<Comment> items = [];
//   bool loading = true;

//   @override
//   void initState() {
//     super.initState();
//     loadComments();
//   }

//   TextTheme get textTheme => Theme.of(context).textTheme;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('TeXView Scroll Sync')),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(child: _buildPane('TeXView', _buildTeXView())),
//             const SizedBox(width: 12),
//             Expanded(child: _buildPane('Outer ListView', _buildOuterList())),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPane(String title, Widget child) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
//         const SizedBox(height: 8),
//         Expanded(
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.blueGrey),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: child,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildTeXView() {
//     // The WebView/iframe viewport height must match the CSS `height` we ask
//     // it to render at - otherwise the browser adds its own extra scrollbar
//     // on top of the `overflow: auto` one (2 scrollbars). Without `overflow`
//     // set at all, the root element has nothing to scroll internally, so the
//     // JS `scroll` listener (and thus onScroll) never fires.
//     if (loading) {
//       return Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       child: Column(
//         children: [
//           for (int i = 0; i < items.length; i++) ...[
//             _commentItem(items[i]),
//             const SizedBox(height: 12),
//           ],
//         ],
//       ),
//     );
//   }

//   Widget _buildOuterList() {
//     return Container();
//   }

//   void loadComments() async {
//     try {
//       setState(() {
//         loading = true;
//       });
//       final str = await assetBundle.rootBundle.loadString(
//         'assets/comments.json',
//       );
//       print('---Loaded comments JSON: $str');
//       final comments = jsonDecode(str) as List;
//       final listComments = comments
//           .map((e) => Comment.fromJson(e as Map<String, dynamic>))
//           .toList();
//       print('---Parsed comments: ${listComments.length}');

//       setState(() {
//         items = listComments;
//         loading = false;
//       });
//     } catch (e) {
//       print('---Failed to load comments: $e');
//       setState(() {
//         loading = false;
//       });
//     }
//   }

//   Widget _commentItem(Comment item) {
//     return Container(
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         color: const Color(0xfff0f2f5),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Markdown(
//         selectable: true,
//         shrinkWrap: true,
//         data: item.solutionText,
//         builders: {
//           'latex': LatexElementBuilder(),
//         },
//         extensionSet: md.ExtensionSet(
//           [LatexBlockSyntax()],
//           [LatexInlineSyntax()],
//         ),
//       ),
//     );
//   }
// }
