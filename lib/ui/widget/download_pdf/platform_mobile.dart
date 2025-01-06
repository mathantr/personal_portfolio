// platform_mobile.dart
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:io' as io;

Future<void> downloadPDFMobile() async {
  try {
    // Request permission (if required)
    // You can request permissions here if necessary

    // Get the app's directory on Android/iOS
    Directory? appDocDirectory = await getApplicationDocumentsDirectory();

    // Check if the directory exists
    if (appDocDirectory != null) {
      String filePath = '${appDocDirectory.path}/MathanThiruvenkadam.pdf';

      // Load the PDF from assets
      ByteData byteData =
          await rootBundle.load('assets/Mathan_Thiruvenkadam.pdf');
      List<int> buffer = byteData.buffer.asUint8List();

      // Create the file and write the content
      io.File file = io.File(filePath);
      await file.writeAsBytes(buffer);

      print("PDF saved to $filePath");
    } else {
      print("Could not access app documents folder");
    }
  } catch (e) {
    print("Error downloading PDF on mobile: $e");
  }
}
