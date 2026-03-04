import 'dart:io';

// ===== MIXIN =====
mixin BisaLogin {
  void login() {
    print("Login berhasil.");
  }
}

mixin BisaAksesSistem {
  void aksesSistem() {
    print("Akses sistem diberikan.");
  }
}

mixin BisaUpdateData {
  void updateData() {
    print("Data berhasil diperbarui.");
  }
}

// ===== CLASS DASAR =====
class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama: ${nama ?? 'Belum diisi'}");
    print("NIM: ${nim ?? 'Belum diisi'}");
    print("Jurusan: ${jurusan ?? 'Belum diisi'}");
  }
}

// ===== EXTENDS + MIXIN =====
class Dosen extends Mahasiswa with BisaLogin, BisaAksesSistem, BisaUpdateData {
  String? mataKuliah;

  void tampilkanDataDosen() {
    tampilkanData();
    print("Mata Kuliah: ${mataKuliah ?? 'Belum diisi'}");
  }
}

class Fakultas extends Mahasiswa with BisaLogin, BisaAksesSistem, BisaUpdateData {
  String? namaFakultas;

  void tampilkanDataFakultas() {
    tampilkanData();
    print("Fakultas: ${namaFakultas ?? 'Belum diisi'}");
  }
}

// ===== MAIN =====
void main() {
  print("Pilih peran:");
  print("1. Dosen");
  print("2. Fakultas");

  String? pilihan = stdin.readLineSync();

  if (pilihan == "1") {
    Dosen dosen = Dosen();

    print("Masukkan Nama Dosen:");
    dosen.nama = stdin.readLineSync();

    print("Masukkan NIM/NIP:");
    dosen.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    dosen.jurusan = stdin.readLineSync();

    print("Masukkan Mata Kuliah:");
    dosen.mataKuliah = stdin.readLineSync();

    print("\n=== DATA DOSEN ===");
    dosen.tampilkanDataDosen();
    dosen.login();
    dosen.aksesSistem();
    dosen.updateData();
  } else if (pilihan == "2") {
    Fakultas fakultas = Fakultas();

    print("Masukkan Nama Petugas Fakultas:");
    fakultas.nama = stdin.readLineSync();

    print("Masukkan NIM/NIP:");
    fakultas.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    fakultas.jurusan = stdin.readLineSync();

    print("Masukkan Nama Fakultas:");
    fakultas.namaFakultas = stdin.readLineSync();

    print("\n=== DATA FAKULTAS ===");
    fakultas.tampilkanDataFakultas();
    fakultas.login();
    fakultas.aksesSistem();
    fakultas.updateData();
  } else {
    print("Pilihan tidak valid.");
  }
}