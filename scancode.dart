import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanCode extends StatefulWidget {
  @override
  _ScanCodeState createState() => _ScanCodeState();
}

class _ScanCodeState extends State<ScanCode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode result;
  QRViewController controller;
  String qrText='';
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                  borderRadius: 10,
                  borderColor: Colors.red,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300,
                ),
               )
          ),
          Center(
            child: (result !=null)? Text('BarCode Type:${describeEnum(result.format)} Data:${result.code}')
            :Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.qr_code,color: Colors.black,), onPressed: (){}),
                  Text('Scan QR code to get your Myntra coupon',style: TextStyle(color: Colors.black),),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}


