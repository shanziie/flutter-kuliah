import 'package:d4tivokasi/features/mahasiswa/data/models/mahasiswa_model.dart';

class MahasiswaRepository {
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      MahasiswaModel(
        nama: 'Budi Santoso',
        nim: '2021001',
        email: 'budi.santoso@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
      ),
      MahasiswaModel(
        nama: 'Siti Rahayu',
        nim: '2021002',
        email: 'siti.rahayu@example.com',
        jurusan: 'Teknik Informatika',
        semester: '6',
      ),
      MahasiswaModel(
        nama: 'Andi Wijaya',
        nim: '2021003',
        email: 'andi.wijaya@example.com',
        jurusan: 'Teknik Informatika',
        semester: '4',
      ),
      MahasiswaModel(
        nama: 'Dewi Lestari',
        nim: '2021004',
        email: 'dewi.lestari@example.com',
        jurusan: 'Teknik Informatika',
        semester: '4',
      ),
    ];
  }
}