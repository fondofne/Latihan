import 'dart:io';

void main() {
  var buku1 = Buku("Sapiens", "Yuval Noah Harari", "KPG", 2018, true);
  var buku2 = Buku("Homo Deus", "Yuval Noah Harari", "KPG", 2018, true);
  var buku3 = Buku(
      "Bahasa Indonesia Terapan", "SD Martaulina", "Deepublish", 2010, true);

  var anggota1 = Anggota("Joko", "Surabaya");
  var anggota2 = Anggota("Jani", "Jakarta");

  var perpustakaan = Perpustakaan();

  perpustakaan.tambahBuku(buku1);
  perpustakaan.tambahBuku(buku2);
  perpustakaan.tambahBuku(buku3);
//
  perpustakaan.tambahAnggota(anggota1);
  perpustakaan.tambahAnggota(anggota2);

  perpustakaan.cariBuku("Sapiens");
  // perpustakaan.cariBuku("Homo Deus");
  // perpustakaan.cariBuku("Bahasa Indonesia Terapan");

  perpustakaan.cariAnggota("Joko");
  // perpustakaan.cariAnggota("Jani");

  perpustakaan.pinjamBuku(anggota1, buku3);
  // perpustakaan.hapusBuku("Homo Deus");
  // perpustakaan.hapusBuku("Bahasa Indonesia Terapan");

  perpustakaan.cariAnggota("Joko");
  // perpustakaan.hapusAnggota("Jani");
}

class Buku {
  String judul;
  String pengarang;
  String penerbit;
  int tahunTerbit;
  bool ketersediaan;

  // Konstruktor
  Buku(this.judul, this.pengarang, this.penerbit, this.tahunTerbit,
      this.ketersediaan);

  // Peminjaman
  void peminjaman() {
    print("Peminjaman Buku");
    this.ketersediaan = false;
  }

  // Pengembalian
  void pengembalian() {
    print("Pengembalian Buku");
    this.ketersediaan = true;
  }

// Informasi buku
  void informasi() {
    print("Judul buku adalah ${this.judul}");
    print("Pengarang buku ini adalah ${this.pengarang}");
    print("Penerbit buku ini adalah ${this.penerbit}");
    print("Buku ini diterbitkan pada tahun ${this.tahunTerbit}");
    print(
        "Buku ini ${this.ketersediaan == true ? "tersedia" : "tidak tersedia"}");
    print("-----------------------------------------------------------------");
  }
}

class Anggota {
  String nama;
  String alamat;
  List<Buku> daftarPinjaman = [];

  // Konstruktor
  Anggota(this.nama, this.alamat);

  void pinjamBuku(Buku buku) {
    daftarPinjaman.add(buku); //
  }

  void kembaliBuku(Buku buku) {
    daftarPinjaman.remove(buku);
  }

  void informasi() {
    print("Nama anggota adalah ${this.nama}");
    print("Alamat anggota ini adalah ${this.alamat}");
    print("Buku yang dipinjam adalah: ");
    for (var buku in daftarPinjaman) {
      print("- ${buku.judul} oleh ${buku.pengarang}");
    }
  }
}

class Perpustakaan {
  List<Buku> koleksiBuku = [];
  List<Anggota> anggotaTerdaftar = [];

  // konstruktor
  Perpustakaan() {}

  void tambahBuku(Buku buku) {
    koleksiBuku.add(buku);
  }

  void tambahAnggota(Anggota anggota) {
    anggotaTerdaftar.add(anggota);
  }

  void cariBuku(String judul) {
    for (var buku in koleksiBuku) {
      if (buku.judul == judul) {
        buku.informasi();
      }
    }
  }

  void cariAnggota(String nama) {
    for (var anggota in anggotaTerdaftar) {
      if (anggota.nama == nama) {
        anggota.informasi();
      }
    }
  }

  void pinjamBuku(Anggota anggota, Buku buku) {
    anggota.pinjamBuku(buku);
    koleksiBuku.remove(buku);
  }

  void pengembalianBuku(Anggota anggota, Buku buku) {
    anggota.kembaliBuku(buku);
    koleksiBuku.add(buku);
  }
}
