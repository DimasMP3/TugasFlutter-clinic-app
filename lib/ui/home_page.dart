import 'package:flutter/material.dart';
import 'poli_page.dart';
import 'pegawai_page.dart';
import 'pasien_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Klinik App')),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.local_hospital),
              title: const Text('Data Poli'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PoliPage()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Data Pegawai'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PegawaiPage()),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.personal_injury),
              title: const Text('Data Pasien'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PasienPage()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
