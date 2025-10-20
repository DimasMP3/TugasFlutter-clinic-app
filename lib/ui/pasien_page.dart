import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  final List<Pasien> _items = [
    Pasien(id: 1, nomorRm: 'RM001', nama: 'Neng Renata', tanggalLahir: '2004-05-05', nomorTelepon: '081324532432435', alamat: 'Jl. BSI Margonda'),
    Pasien(id: 2, nomorRm: 'RM002', nama: 'Uni BulanKuu', tanggalLahir: '2006-02-12', nomorTelepon: '081324532432436', alamat: 'Jl. Kesayangan 1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Pasien')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final p = _items[index];
          return Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.personal_injury)),
              title: Text(p.nama ?? '-'),
              subtitle: Text('RM: ${p.nomorRm ?? '-'} • Telp: ${p.nomorTelepon ?? '-'}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetail(pasien: p),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
