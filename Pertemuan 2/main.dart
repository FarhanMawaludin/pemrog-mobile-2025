main() {
  // for(int i = 20; i > 0 ; i--){
  //   print("My name is Farhan, i am $i years old");
  // }

  // makeCoffe("Cappuccino");
  // makeCoffe("Cappuccino", "1");

  late String title;
  void getTitle() {
    title = 'Default';
    print('Title is $title');
  }

  getTitle();
  
}



void makeCoffe(String coffe, [String? sugar]) {
  if (sugar == null) {
    print("$coffe with no sugar");
  } else {
    print("$coffe with $sugar sugar");
  }
}
