class Kendaraan {
  String merek;
  String model;
  int tahunProduksi;

  Kendaraan(this.merek, this.model, this.tahunProduksi);

  void infoKendaraan() {
    print('Kendaraan: $merek $model, Tahun: $tahunProduksi');
  }
}

class Mobil extends Kendaraan {
  int jumlahPintu;

  Mobil(super.merek, super.model, super.tahunProduksi, this.jumlahPintu);

  void infoMobil() {
    print(
        'Merk Mobil: $merek\nModel: $model\nTahun: $tahunProduksi\nJumlah Pintu: $jumlahPintu');
  }
}

class Hewan {
  void suara() {
    print('Suara Hewan');
  }
}

class Anjing extends Hewan {
  String nama;

  Anjing(this.nama);

  @override
  void suara() {
    print('Guk Guk');
  }
}

class Kucing extends Hewan {
  String nama;

  Kucing(this.nama);

  @override
  void suara() {
    print('Meong');
  }
}

class Mahasiswa {
  String _nama;
  int _umur;

  Mahasiswa(this._nama, this._umur);

  String get nama => _nama;
  set nama(String nama) => _nama = nama;

  int get umur => _umur;
  set umur(int umur) => _umur = umur;
}

abstract class Bentuk {
  double hitungLuas();
}

class Persegi extends Bentuk {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }
}

void main() {
  var mobil = Mobil('Toyota', 'Avanza', 2019, 4);
  mobil.infoMobil();

  Anjing anjing = Anjing('DOggy');
  anjing.suara();

  Kucing kucing = Kucing('Meow');
  kucing.suara();

  Mahasiswa mhs = Mahasiswa('Ocep', 19);
  //Menggunakan getter
  print('Nama: ${mhs.nama}\nUmur: ${mhs.umur}');

  //Menggunakan setter
  mhs.nama = 'Ocepp';
  mhs.umur = 20;
  print('Nama: ${mhs.nama}\nUmur: ${mhs.umur}');

  var persegi = Persegi(10);
  var luasPersegi = persegi.hitungLuas();
  print('Luas Persegi: $luasPersegi');
}
