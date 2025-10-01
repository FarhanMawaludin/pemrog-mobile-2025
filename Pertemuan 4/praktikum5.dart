// void main() {
//   var record = ('first', a: 2, b: true, 'last');

//   print(record);

//   var angka = (2, 3);
//   print(tukar(angka));

//   (String, int) mahasiswa = ('Farhan Mawaludin', 2341720258);
//   print(mahasiswa);

//   var mahasiswa2 = ('Farhan Mawaludin', a: 2341720258, b: true, 'last');

//   print(mahasiswa2.$1); // Prints 'first'
//   print(mahasiswa2.a); // Prints 2
//   print(mahasiswa2.b); // Prints true
//   print(mahasiswa2.$2); // Prints 'last'
// }

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void tambah(int a, int b) {
  print(a + b);
}

void sapa1(String nama, [String? pesan]) {
  print("Halo $nama ${pesan ?? ''}");
}

void buatAkun({required String nama, int umur = 18}) {
  print("Nama: $nama, Umur: $umur");
}

(String, int) getMahasiswa() {
  return ('Farhan', 2341720258);
}

void main() {
  var user = getMahasiswa();
  print("Nama: ${user.$1}, NIM: ${user.$2}");
}
