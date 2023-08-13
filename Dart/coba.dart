// ignore_for_file: dead_code

import 'dart:io';

main() {
  // var nama = "Nama";
  // String lastName = "Saya";
  // print(nama + " " + lastName);

  // stdout.writeln("What is your name:?");
  // String name = stdin.readLineSync()!;
  // print("My name is $name");

  // int n = 100;
  // var m = 240;
  // print("n = $n | m = $m \n");
//
  // double x = 123.11;
  // var y = -123.1112;
  // print("x = $x | y = $y\n");

  // String a = "a";
  // var b = "b";
  // print("a = $a | b = $b\n");

  // bool benar = true;
  // var salah = false;
  // print("benar = $benar | salah = $salah\n");

  // dynamic variable_lemah = 1231.222;
  // print("variable_lemah = $variable_lemah\n");

  // variable_lemah = "variabel_lemah";
  // print("variable_lemah = $variable_lemah\n");

  // variable_lemah = null;
  // print("variable_lemah = $variable_lemah\n");

  // var s = """
// ini adalah
// sebuah baris banyak
// """;
  // print(s);

/* Mengubah tipe data */

  // var one = int.parse("1");
  // assert(one == 1); // verifying

  // var onePointOne = double.parse("1.1");
  // assert(onePointOne == 1.1);

  // String oneAsString = 1.toString();
  // assert(oneAsString == "1");

  // String onePointOneAsString = 1.1.toStringAsFixed(1);
  // assert(onePointOneAsString == "1");
  //
  //
  //
  //
  //

  /* mencari tahu tipe data*/
  // const satu = 1.222;
  // const awal = "awal";

  // print(satu.runtimeType);
  // print(awal.runtimeType);
  //
  //
  //
  //
  //
  //
  //

  // int num = 1;
  // if (num == 1) {
  // num += 2;
  // print("num = $num = tiga");
  // }
//
//
// /
//
//
//
//
//

  // int num = 100;
  // var a = num % 2 == 0 ? "genap" : "ganjil";
  // print(a);

  // int num = 1;
  // switch (num) {
  // case 1:/
  // print("satu");
  // break;
  // case 2:
  // print("dua");
  // break;
  // default:
  // print("tidak ada");
  // }

//
//
//
//
//
//

  // var num = [1, 2, 3, 4, 5, 6, 7];
  // num.forEach((element) {
  // print(element);
  // });

/* List */
  // List cobalis = [1, 2, 3, 4, 5, 6, 7];
  // print(cobalis);
  // print(cobalis.length);
  // for (var i in cobalis) {
  //   print(i);
  // }

  // List<String> cobalis2 = ["satu", "dua", "tiga"];
  // print(cobalis2);
  // // agar ga bisa diubah gunakan cobalis2 = cons ["satu", "dua", "tiga]

  // // copy tanpa mengubah bentuk
  // var cobalis3 = [...cobalis2];
  // print(cobalis3);

  // cobalis2[1] = "nomor_satu";
  // print(cobalias2);

  // print(cobalis3);

//
//
//
//
//

/* Set */
  // var cobaset = {"satu", "dua", "satu"};
  // for (var i in cobaset) {
  // print(i);
  // }

//
//
//
//
//
//
/* Map */
  // var hadiah = {"nama": "cobalis", "harga": 1000, "gambar": "cobalis.jpg"};
  // print(hadiah["nama"]);

  // var had = Map();
  // had["nama"] = "cobalis";
  // print(had["nama"]);

  /* class*/
  identitas identiti = identitas("saya", 12, "surabaya");
  identiti.printer();
  var identiti2 = identitas("aku", 12);
  identiti2.printer();
  var identiti3 = identitas.guest();
  identiti3.printer();
}

dynamic kuadrat(var num) {
  return num * num;
}

void showOutput(var msg) {
  print(msg);
}

class identitas {
  String nama = "";
  int umur = 0;
  String alamat = "";

  identitas(String nama, int umur, [String alamat = "Dirahasiakan"]) {
    this.nama = nama;
    this.umur = umur;
    this.alamat = alamat;
  }

  identitas.guest() {
    nama = "guest";
    umur = 18;
  }

  void printer() {
    print(nama);
    print(umur);
    print(alamat);
  }
}
