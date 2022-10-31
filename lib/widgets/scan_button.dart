import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.qr_code_scanner_outlined),
      onPressed: () async {
        //String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3d8bef', 'Cancelar', false, ScanMode.QR);
        const barcodeScanRes = 'gaspargomez975@gmail.com';
        print(barcodeScanRes);
      },
    );
  }
}
