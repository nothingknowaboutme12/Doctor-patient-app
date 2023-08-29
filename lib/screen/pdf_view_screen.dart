import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PdfViewerPage extends StatefulWidget {
  String url;
  String title;
  PdfViewerPage({required this.url, required this.title});
  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late File Pfile;
  bool isLoading = false;
  Future<void> loadNetwork() async {
    setState(() {
      isLoading = true;
    });
    var url = widget.url;
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    var file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    setState(() {
      Pfile = file;
    });

    print(Pfile);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    loadNetwork();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                if (Pfile != null) {
                  await Share.shareXFiles(
                    [XFile(Pfile.path)],
                    sharePositionOrigin: Rect.fromCircle(
                      radius: context.size!.width * 0.25,
                      center: const Offset(0, 0),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Failed to share the it")));
                }
              },
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ))
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: Pfile.path,
            ),
    );
  }
}
