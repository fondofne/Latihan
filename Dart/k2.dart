import 'dart:io';

void main() {
  print("Selamat datang di Kalkulator Bunga Sederhana");

  stdout.write("Masukkan jumlah pinjaman: ");
  double principal = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  stdout.write("Masukkan tingkat bunga (dalam persen): ");
  double rate = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  stdout.write("Masukkan jangka waktu (tahun): ");
  double time = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  double simpleInterest = (principal * rate * time) / 100;
  double totalAmount = principal + simpleInterest;

  print("Bunga Sederhana: $simpleInterest");
  print("Total Jumlah: $totalAmount");
}
