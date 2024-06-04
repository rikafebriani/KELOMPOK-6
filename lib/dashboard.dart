import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        color: Colors.lightBlue[100], // Background color
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/logo.png',
                height: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selamat Datang!\nFORMADIKSI\nPolindra',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'SALDO UTAMA',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp45.000.000,00',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.visibility_off),
                    onPressed: () {
                      // Handle visibility toggle
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Catatan Keuangan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Pemasukan'),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Pengeluaran'),
                    Container(
                      width: 100,
                      height: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Handle navigation to detail
                  },
                  child: Text(
                    'Lihat Detail ->',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'KAS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/dashboard');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/kas');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
