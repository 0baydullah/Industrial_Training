import 'package:flutter/material.dart';
import 'details.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:product_x/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
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
  String productName = "";
  int productPrice = 0;
  int productId = 0;
  var product;

  Future<void> scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    setState(() {
      barcodeResult = "Scanned: $barcode";
      // Call the API to get product details
      getProductDetails(barcode);
    });


    setState(() {

    });
  }

  Future<void> getProductDetails(String barcode) async {
    final apiUrl = 'https://blockchain-project-api.vercel.app/api/products/single/'; // Replace with your API URL

    final response = await http.get(Uri.parse('$apiUrl/$barcode'));


   /// final response = await http.get(Uri.parse('$apiUrl'));

    // if (response.statusCode == 200) {
    //   // If server returns an OK response, parse the JSON
    //   final Map<String, dynamic> data = json.decode(response.body);
    //   // Extract and use the product details as needed
    //   print("*****************************Product Details: ${response} *******************************");
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // throw an exception.
    //   throw Exception('##########################################Failed to load product details#########################################');
    // }


    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      final Map<String, dynamic> data = json.decode(response.body);

      // Extract product details
      product= data["product"];
      print("######################${product}###############################");
      setState(() {
        productName = product['title'];
        productPrice = product['price'];
        productId = product['tempId'];
        print("#*#**#*#&#&*#*#*#&##*#&*#*###&**#*&&*#&*#*#&#&#**#*#*#&*#&*&#*#&*#*#**");
        print("Product Name: $productName");
        print("Product Price: $productPrice");
        print("Product ID: $productId");
      });

    } else {
    // If the server did not return a 200 OK response,
    // throw an exception.
    throw Exception('Failed to load product details');
    }
  }
  void refresh(){setState(() {

  });}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode Scanner by Obaydullah"),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
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
            SizedBox(height: 20),
            if (true)
              Column(
                children: [

                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  Details(name: productName,id: productPrice,details: productId,)));

                      },
                      child: Text("See Details"),
                  ),
                  // Text("Product Name: $productName"),
                  // Text("Product Price: $productPrice"),
                  // Text("Product ID: $productId"),
                ],
              ),
          ],
        ),
      ),
    );
  }
}