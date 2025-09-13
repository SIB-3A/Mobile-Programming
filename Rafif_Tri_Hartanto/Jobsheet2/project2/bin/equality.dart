import 'dart:io';

void main(){
  int a =10;
  int b =11;
  print(a == b); // false
  print (identical(a, b)); // false

  String s1 = "dart";
  String s2 = "Dart";
  print(s1 == s2); // false (case sensitive)
}