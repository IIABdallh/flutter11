import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Confirmation"),
                          content: const Text(
                              "Are you sure you want to delete this item?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // إغلاق النافذة الحوارية وتنفيذ إجراء عند الضغط على "Yes"
                                Navigator.of(context)
                                    .pop(); // لإغلاق النافذة الحوارية
                                // يمكنك هنا تنفيذ أي إجراء تريده بمجرد الضغط على "Yes"
                                // مثلاً: حذف العنصر أو إتمام العملية
                                // يمكنك تنفيذ العمليات اللازمة هنا
                              },
                              child: const Text("Yes"),
                            ),
                            TextButton(
                              onPressed: () {
                                // إغلاق النافذة الحوارية وتنفيذ إجراء عند الضغط على "No"
                                Navigator.of(context)
                                    .pop(); // لإغلاق النافذة الحوارية
                                // يمكنك هنا تنفيذ أي إجراء تريده بمجرد الضغط على "No"
                                // مثلاً: إلغاء الحذف أو إلغاء العملية
                                // يمكنك تنفيذ العمليات اللازمة هنا
                              },
                              child: const Text("No"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Show AlertDialog"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
