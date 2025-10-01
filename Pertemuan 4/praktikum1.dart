void main() {
  final List<dynamic> list = List.filled(5, null);

  list[1] = "Farhan Mawaludin"; 
  list[2] = 2341720258; 

  // print isi list
  print("Isi List: $list");
  print("Index 1 (Nama): ${list[1]}");
  print("Index 2 (NIM): ${list[2]}");
}
