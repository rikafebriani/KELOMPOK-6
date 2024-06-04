import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class KasPage extends StatefulWidget {
  @override
  _KasPageState createState() => _KasPageState();
}

class _KasPageState extends State<KasPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat('yyyy-MM-dd').format(DateTime.now());
  }

  Future<void> _saveDataToExcel() async {
    var excel = Excel.createExcel();
    Sheet sheetObject = excel['KAS'];

    // Menambahkan header jika sheet baru
    sheetObject.insertRowIterables(['Nama', 'Tanggal', 'Bulan', 'Nominal Bayar'], 0);

    // Menambahkan data ke sheet
    sheetObject.appendRow([
      nameController.text,
      dateController.text,
      monthController.text,
      amountController.text,
    ]);

    // Menyimpan file Excel ke direktori aplikasi
    final directory = await getApplicationDocumentsDirectory();
    String filePath = '${directory.path}/kas_data.xlsx';
    var fileBytes = excel.save();
    File(filePath)
      ..createSync(recursive: true)
      ..writeAsBytesSync(fileBytes!);

    // Menampilkan pesan sukses
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data berhasil disimpan ke $filePath')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KAS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Tanggal'), // Label 'Tanggal' benar untuk bahasa Indonesia
            ),
            TextField(
              controller: monthController,
              decoration: InputDecoration(labelText: 'Bulan'),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Nominal Bayar'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _saveDataToExcel();
                  },
                  child: Text('Simpan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
