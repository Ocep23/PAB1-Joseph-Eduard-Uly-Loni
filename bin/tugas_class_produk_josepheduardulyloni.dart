import 'dart:io';

class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon() {
    return (harga * jumlah) - (harga * jumlah * diskon);
  }

  void tampilkanInformasiProduk() {
    print('Nama Produk: $namaProduk');
    print('Harga Produk: $harga');
    print('Jumlah Beli: $jumlah');
    print('Diskon: ${diskon * 100}%');
    print('Total Harga Tanpa Diskon: ${hitungTotalHargaTanpaDiskon()}');
    print('Total Harga Setelah Diskon: ${hitungTotalHargaSetelahDiskon()}');
  }
}

void main() {
  List<Produk> daftarProduk = [];

  while (true) {
    print('Masukkan Nama Produk:');
    String namaProduk = stdin.readLineSync()!;

    print('Masukkan Harga Produk:');
    double harga = double.parse(stdin.readLineSync()!);

    print('Masukkan Jumlah Produk:');
    int jumlah = int.parse(stdin.readLineSync()!);

    print('Masukkan Diskon (dalam desimal, misal 0.1 untuk 10%):');
    double diskon = double.parse(stdin.readLineSync()!);

    var produk = Produk(namaProduk, harga, jumlah, diskon);
    daftarProduk.add(produk);

    print('Apakah Anda ingin memasukkan produk lain? (y/n)');
    String? jawaban = stdin.readLineSync();
    if (jawaban?.toLowerCase() != 'y') {
      break;
    }
  }

  double totalHargaTanpaDiskon = 0;
  double totalHargaSetelahDiskon = 0;

  for (var produk in daftarProduk) {
    totalHargaTanpaDiskon += produk.hitungTotalHargaTanpaDiskon();
    totalHargaSetelahDiskon += produk.hitungTotalHargaSetelahDiskon();
  }

  print('\nNota Pembelian:');
  for (var produk in daftarProduk) {
    produk.tampilkanInformasiProduk();
    print('-----------------------------------------');
  }
  print('Total Harga Tanpa Diskon: $totalHargaTanpaDiskon');
  print('Total Harga Yang Harus Dibayar: $totalHargaSetelahDiskon');
}
