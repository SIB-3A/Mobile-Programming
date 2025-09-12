import 'dart:io';

void main() {
  // Contoh dengan break
  for (int i = 0; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print("iterasi ke $i");
  }

  // Contoh dengan continue
  for (int i = 0; i <= 10; i++) {
    if (i % 2 != 0) {
      continue;
    }
    print("iterasi ke $i");
  }
}
