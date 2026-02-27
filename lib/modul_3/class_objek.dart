import 'dart:io';

class Mahasiswa {
  String nama = "Shima";
  
  void tampilkanData() {
    print("Nama Mahasiswa: $nama");
  }
}

  void main() {
    var mahasiswa1 = Mahasiswa();
    mahasiswa1.tampilkanData();

    stdout.write("Masukkan nama mahasiswa yang baru: ");
    String? namaBaru = stdin.readLineSync();
    if (namaBaru != null && namaBaru.isNotEmpty) {
      mahasiswa1.nama = namaBaru;
      print("Nama mahasiswa telah diperbarui.");
      mahasiswa1.tampilkanData();
    } else {
      print("Nama tidak boleh kosong");
    }
  }



  