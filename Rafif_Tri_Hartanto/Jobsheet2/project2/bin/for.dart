import 'dart:io';

void main(){
  for (int i=0; i<=10; i++) {
    if (i == 5) {
      break;
    }
    print("Perulangan ke-$i");
  }

  for (int j=0; j<=10; j++) {
    if (j%2  == 0) {
      continue;
    }
    print("Perulangan ke-$j");
  }

}