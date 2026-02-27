import 'dart:io';

void main() {
  // membuat set dengan data awal
  Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  print('Burung: $burung');

  // menambahkan data ke set
  burung.add('Pipit');
  print('Burung setelah ditambahkan: $burung');

    // mencoba menambahkan data duplicate
  burung.add('Merpati');
  print('Burung setelah mencoba menambahkan duplicate: $burung');

  
  // menghapus data dari set
  burung.remove('Elang');
  print('Burung setelah dihapus: $burung');

  
  // cek apakah data tertentu ada dalam set
  String cekBurung = 'Kakatua';
  if (burung.contains(cekBurung)) {
    print('$cekBurung ada dalam set.');
  } else {
    print('$cekBurung tidak ada dalam set.');
  }

  // menghitung jumlah data dalam set
  print('Jumlah burung: ${burung.length}');

  print('\n=== SEMUA DATA ===');
  int urutan = 1;
  for (var namaBurung in burung) {
    print('$urutan. $namaBurung');
    urutan++;
  }
  print('Total data: ${burung.length}');

  // Masukkan data baru
  stdout.write('\nMasukkan data baru: ');
  String? dataBaru = stdin.readLineSync();
  if (dataBaru != null && dataBaru.isNotEmpty) {
    if (burung.add(dataBaru)) {
      print('Data "$dataBaru" berhasil ditambahkan!');
    } else {
      print('Data "$dataBaru" sudah ada (duplikat)!');
    }
  }

  // Masukkan data yang ingin dihapus
  stdout.write('Masukkan data yang ingin dihapus: ');
  String? dataHapus = stdin.readLineSync();
  if (burung.remove(dataHapus)) {
    print('Data "$dataHapus" berhasil dihapus!');
  } else {
    print('Data "$dataHapus" tidak ditemukan di Set!');
  }

  // Masukkan data yang ingin dicek
  stdout.write('Masukkan data yang ingin dicek: ');
  String? dataCek = stdin.readLineSync();
  if (burung.contains(dataCek)) {
    print('Data "$dataCek" ada di Set!');
  } else {
    print('Data "$dataCek" tidak ada di Set!');
  }
}

