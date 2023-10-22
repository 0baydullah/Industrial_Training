import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarcodeScanner(),
    );
  }
}

class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  String barcodeResult = "Scan a barcode";

  Future<void> scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    setState(() {
      barcodeResult = "Scanned: $barcode";
    });

    // Call the API to get product details
    getProductDetails(barcode);
  }

  Future<void> getProductDetails(String barcode) async {
    final apiUrl = "YOUR_API_URL"; // Replace with your API URL
    final response = await http.get(Uri.parse('$apiUrl/products/$barcode'));

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      final Map<String, dynamic> data = json.decode(response.body);
      // Extract and use the product details as needed
      print("Product Details: $data");
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load product details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode Scanner App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              barcodeResult,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: scanBarcode,
              child: Text("Scan Barcode"),
            ),
          ],
        ),
      ),
    );
  }
}
