import 'dart:io';

void main() {
  print("Selamat datang di Kalkulator Sederhana");
  print("Pilih operasi: ");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");
  String pilihan = stdin.readLineSync() ?? "";

  while (true) {
    if (pilihan == "1" || pilihan == "2" || pilihan == "3" || pilihan == "4") {
      print("Masukkan angka pertama:");
      double num1 = double.parse(stdin.readLineSync() ?? "0");
      print("Masukkan angka kedua:");
      double num2 = double.parse(stdin.readLineSync() ?? "0");

      switch (pilihan) {
        case "1":
          double jumlah = num1 + num2;
          print("Hasil penjumlahan antara $num1 dan $num2 adalah $jumlah");
          break;
        case "2":
          double kurang = num1 - num2;
          print("Hasil pengurangan antara $num1 dan $num2 adalah $kurang");
          break;
        case "3":
          double kali = num1 * num2;
          print("Hasil perkalian antara $num1 dan $num2 adalah $kali");
          break;
        case "4":
          if (num2 != 0) {
            double bagi = num1 / num2;
            print("Hasil pembagian antara $num1 dan $num2 adalah $bagi");
            break;
          } else {
            print("Tidak terdefinisi");
            break;
          }
      }
      break;
    } else {
      print("Maaf, pilihan anda tidak valid. Silakan coba lagi");
      break;
    }
  }
}
