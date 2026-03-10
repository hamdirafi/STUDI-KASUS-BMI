import 'dart:io';
import 'dart:math';

void main() {
  print("=== GAME TEBAK ANGKA ===");

  int angkaRahasia = Random().nextInt(100) + 1;

  stdout.write("Masukkan tebakan: ");
  int tebakan = int.parse(stdin.readLineSync()!);

  if (tebakan == angkaRahasia) {
    print("Benar!");
  } else {
    print("Salah, angka yang benar adalah $angkaRahasia");
  }
}