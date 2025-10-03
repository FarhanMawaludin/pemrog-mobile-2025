class Item {
  String name;
  int price;
  double rating = 0;
  int stok = 0;
  String image = '';

  Item({required this.name, required this.price, this.rating = 0, this.stok = 0, this.image = ''});

}