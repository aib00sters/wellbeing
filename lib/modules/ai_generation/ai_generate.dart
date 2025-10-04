// import 'package:flutter/material.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController _controller = TextEditingController();
//   String s = "";
//   Future<void> ai({required String text}) async {
//     final model = GenerativeModel(
//         model: 'gemini-1.5-flash',
//         apiKey: "AIzaSyBzmNeMK20wEVYKHfzy7QG_laJdnnx3pSw");
//     var prompt = text;
//     final content = [Content.text(prompt)];
//     final response = await model.generateContent(content);
//     print(response.text);
//     setState(() {
//       s = response.text!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TextField and Button Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Enter Text',
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 print('Entered text: ${_controller.text}');
//                 ai(text: _controller.text);
//               },
//               child: const Text('Submit'),
//             ),
//             Text(s)
//           ],
//         ),
//       ),
//     );
//   }
// }
