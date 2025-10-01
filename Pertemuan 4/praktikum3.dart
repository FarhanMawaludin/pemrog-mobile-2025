void main() {
  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts.addAll({'nama': 'Farhan Mawaludin', 'nim': '2341720258'});
  nobleGases.addAll({20: 'Farhan Mawaludin', 21: '2341720258'});
  mhs1.addAll({'nama': 'Farhan Mawaludin', 'nim': '2341720258'});
  mhs2.addAll({20: 'Farhan Mawaludin', 21: '2341720258'});

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
