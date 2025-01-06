// platform_web.dart
import 'dart:html' as html;

Future<void> downloadPDFWeb() async {
  try {
    // Web download using dart:html
    final anchor = html.AnchorElement(href: 'assets/Mathan_Thiruvenkadam.pdf')
      ..target = 'blank'
      ..download = 'MathanThiruvenkadam.pdf';
    anchor.click();
  } catch (e) {
    print("Error downloading PDF on web: $e");
  }
}
