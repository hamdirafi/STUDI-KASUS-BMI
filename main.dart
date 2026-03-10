import 'dart:io';
import 'dart:math';

void main() {
  print("=== GAME TEBAK ANGKA ===");

  // Angka rahasia antara 1 sampai 100
  int angkaRahasia = Random().nextInt(100) + 1;
  int tebakan = 0;

  while (tebakan != angkaRahasia) {
    stdout.write("Tebak angka (1-100): ");
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