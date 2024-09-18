import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class InstructionScreen extends StatefulWidget {
  const InstructionScreen({super.key});

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  late String _localPath;
  late String _remotePDFpath;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchPDF().then((file) {
      setState(() {
        _localPath = file.path;
        _isLoading = false;
      });
    });
  }

  Future<File> _fetchPDF() async {
    final url = 'https://fuap.ru/soglasie-pd.pdf';
    final filename = url.split('/').last;
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');

    if (await file.exists()) {
      return file;
    } else {
      final response = await http.get(Uri.parse(url));
      final bytes = response.bodyBytes;
      await file.writeAsBytes(bytes, flush: true);
      return file;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Согласие на обработку перс. данных'),
        centerTitle: true,
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: _localPath,
              enableSwipe: true,
              swipeHorizontal: false,
              autoSpacing: true,
              pageFling: true,
              onRender: (_pages) {
                setState(() {});
              },
              onError: (error) {
                print(error.toString());
              },
              onPageError: (page, error) {
                print('$page: ${error.toString()}');
              },
            ),
    );
  }
}
