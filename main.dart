import 'dart:io';
import 'dart:math';

void main() {
  int angkaRahasia = Random().nextInt(10) + 1;
  int tebakan = 0;

  print("=== GAME TEBAK ANGKA ===");

  while (tebakan != angkaRahasia) {
    stdout.write("Tebak angka (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaRahasia) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaRahasia) {
      print("Terlalu besar!");
    } else {
      print("Benar! 🎉");
    }
  }
}