import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {
  print("Starting................................");
  await Future.delayed(Duration(seconds: 2), () {
    print("masukkan angka yang anda pilih antara 0-20:");
  });

  var acakan = Random();
  int angkaAcak = acakan.nextInt(20);

  int coba = 1;
  while (coba <= 5) {
    int tebakan = int.parse(stdin.readLineSync() ?? "0");
    if (tebakan == angkaAcak) {
      print("Anda telah menyelesaikan soal");
      await Future.delayed(Duration(seconds: 1), () {
        print("Angka itu adalah $angkaAcak");
      });
      break;
    } else {
      print("Anda belum menyelesaikan soal pada percobaan ke $coba");
      int sisa = 5 - coba;
      print("$sisa kali percobaan lagi tersisa");
      coba++;
    }
  }
  print("Anda gagal");
  await Future.delayed(Duration(seconds: 1), () {
    print("Angka itu adalah $angkaAcak");
  });
}
