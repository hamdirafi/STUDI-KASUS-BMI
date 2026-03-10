import 'dart:io';

void main() {
  print("=== Aplikasi Kalkulator BMI ===");

  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  print("\nData berhasil dimasukkan:");
  print("Tinggi: $tinggi cm");
  print("Berat: $berat kg");
}