import 'package:flutter_riverpod/flutter_riverpod.dart';
// Sesuaikan import model dan repository dengan struktur folder kamu
import 'package:testflutter/features/data/models/dashboard_model.dart';
import 'package:testflutter/features/data/repositories/dashboard_repository.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return DashboardRepository();
});

class DashboardNotifier extends StateNotifier<AsyncValue<DashboardData>> {
  final DashboardRepository _repository;

  DashboardNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadDashboard();
  }

  Future<void> loadDashboard() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getDashboardData();
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    // Memanggil ulang loadDashboard untuk refresh data
    await loadDashboard();
  }
}

// Provider utama yang dipanggil di DashboardPage
final dashboardNotifierProvider = StateNotifierProvider<DashboardNotifier, AsyncValue<DashboardData>>((ref) {
  final repository = ref.watch(dashboardRepositoryProvider);
  return DashboardNotifier(repository);
});

// Provider untuk index statistik yang dipilih
final selectedStatIndexProvider = StateProvider<int>((ref) => 0);