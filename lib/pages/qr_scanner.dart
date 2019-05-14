import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class QrScanner extends StatefulWidget {
  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  String result = "Hey there !";
  Future _scanQR() async {
    try {
      String qrresult = await BarcodeScanner.scan();
      setState(() {
        result = qrresult;
      });
    } on PlatformException catch (ex) {
      print("Platform exception message : $ex");
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied.";
        });
      } else {
        setState(() {
          result = "Unknown error. $ex";
        });
      }
    } on FormatException catch (error) {
      print("Error in QR Scanner message : $error");
      setState(() {
        result = "You pressed the back button before scanning anything.";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown error. $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
      ),
      body: Center(
        child: Text(
          result,
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: _scanQR,
      ),
    );
  }
}
