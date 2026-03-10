import 'dart:io';

void main() {
  print("=== Aplikasi Kalkulator BMI ===");

  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  double tinggiM = tinggi / 100;
  double bmi = berat / (tinggiM * tinggiM);

  String kategori;

  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  print("\nBMI: ${bmi.toStringAsFixed(2)}");
  print("Kategori: $kategori");
}