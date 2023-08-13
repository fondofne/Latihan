import 'dart:io';
import 'dart:math';

void main() {
  print('Menghitung luas dan keliling lingkaran');
  print('Masukkan jari-jari lingkaran');
  double jarilingkaran = double.parse(stdin.readLineSync() ?? "0");
  double luas = hitungluas(jarilingkaran);
  double keliling = hitungkeliling(jarilingkaran);
  print('Luas = $luas');
  print('Keliling = $keliling');
}

double hitungluas(double jarilingkaran) {
  return pi * pow(jarilingkaran, 2);
}

double hitungkeliling(double jarilingkaran) {
  return 2 * pi * jarilingkaran;
}
