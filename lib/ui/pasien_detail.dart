import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatelessWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(pasien.nama ?? 'Detail Pasien')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RowInfo(label: 'ID', value: '${pasien.id ?? '-'}'),
            _RowInfo(label: 'No. RM', value: pasien.nomorRm ?? '-'),
            _RowInfo(label: 'Nama', value: pasien.nama ?? '-'),
            _RowInfo(label: 'Tanggal Lahir', value: pasien.tanggalLahir ?? '-'),
            _RowInfo(label: 'Telepon', value: pasien.nomorTelepon ?? '-'),
            _RowInfo(label: 'Alamat', value: pasien.alamat ?? '-'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Ubah')),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: scheme.error,
                    foregroundColor: scheme.onError,
                  ),
                  child: const Text('Hapus'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _RowInfo extends StatelessWidget {
  final String label;
  final String value;
  const _RowInfo({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(width: 130, child: Text('$label:')),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
