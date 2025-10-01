// void main(){
//   for (int index = 10;index<27;index++){
//     print(index);
//   }
// }

void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;
    else if (index >1 && index < 7) continue;
    print(index);
  }
}


// Soal no 2
//terjadi error
//karena index tidak terdefinisi dia tipenya apa
//kemudian pada iterasi tidak terdefinisi dengan jelas, sehingga terjadi looping terus menerus

//Soal No 3
//tidak ada eror hanya saja tidak ada output yang dihasilkan karna semua kondisi tidak terpenuhi, 
//jadi kondisi else if seharusnya mennggunakan operasi logika AND (&&) 

