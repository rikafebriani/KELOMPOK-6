import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/logo.png'), // Ganti dengan gambar profil yang sesuai
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk mengedit foto profil
              },
              child: Text('Edit Foto Profil'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Ubah Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk menyimpan password baru
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
