import 'dart:io';

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

class MahasiswaAktif extends Mahasiswa {
  int? semester;

  void tampilkanDataAktif() {
    tampilkanData();
    print("Semester: ${semester ?? 'Belum diisi'}");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;
  String? pekerjaanTerakhir;

  void tampilkanDataAlumni() {
    tampilkanData();
    print("Tahun Lulus: ${tahunLulus ?? 'Belum diisi'}");
    print("Pekerjaan Terakhir: ${pekerjaanTerakhir ?? 'Belum diisi'}");
  }
}

void main() {
  print("Pilih tipe mahasiswa:");
  print("1. Mahasiswa Aktif");
  print("2. Mahasiswa Alumni");

  String? pilihan = stdin.readLineSync();

  if (pilihan == "1") {
    MahasiswaAktif mhs = MahasiswaAktif();

    print("Masukkan Nama:");
    mhs.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    mhs.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    mhs.jurusan = stdin.readLineSync();

    print("Masukkan Semester:");
    mhs.semester = int.tryParse(stdin.readLineSync() ?? '');

    print("\n=== DATA MAHASISWA AKTIF ===");
    mhs.tampilkanDataAktif();
  } else if (pilihan == "2") {
    MahasiswaAlumni mhs = MahasiswaAlumni();

    print("Masukkan Nama:");
    mhs.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    mhs.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    mhs.jurusan = stdin.readLineSync();

    print("Masukkan Tahun Lulus:");
    mhs.tahunLulus = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Pekerjaan Terakhir:");
    mhs.pekerjaanTerakhir = stdin.readLineSync();

    print("\n=== DATA MAHASISWA ALUMNI ===");
    mhs.tampilkanDataAlumni();
  } else {
    print("Pilihan tidak valid.");
  }
}