import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // Import to use kIsWeb
import 'package:portfolio/ui/const/const_color.dart';
import 'package:portfolio/ui/widget/download_pdf/platform_web.dart';
import 'package:portfolio/ui/widget/download_pdf/platform_mobile.dart';

// Conditional import based on platform
import 'platform_mobile.dart' if (dart.library.html) 'platform_web.dart';

class DownloadPDFPage extends StatefulWidget {
  @override
  _DownloadPDFPageState createState() => _DownloadPDFPageState();
}

class _DownloadPDFPageState extends State<DownloadPDFPage> {
  Future<void> _downloadPDF() async {
    try {
      if (kIsWeb) {
        // Call Web-specific download function
        await downloadPDFWeb();
      } else {
        // Call Mobile-specific download function (Android/iOS)
        await downloadPDFMobile();
      }
    } catch (e) {
      print("Error during download: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _downloadPDF, // Handle tap to download
      child: Container(
        height: 50,
        width: 200,
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ConstColor.green, width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              CupertinoIcons.cloud_download,
              color: Colors.white,
            ),
            Text(
              "Download Resume",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
