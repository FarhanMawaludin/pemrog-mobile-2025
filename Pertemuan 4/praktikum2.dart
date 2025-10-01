void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add('Farhan Mawaludin');
  names1.add('2341720258');
  names2.addAll(['Farhan Mawaludin', '2341720258']);


  print(names1);
  print(names2);
}
