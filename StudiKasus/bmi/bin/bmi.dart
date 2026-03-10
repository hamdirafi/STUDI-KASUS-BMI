import 'dart:io';

void main() {
  List<Map<String, dynamic>> riwayat = [];
  bool lanjut = true;

  print("=== Aplikasi Kalkulator BMI ===");

  while (lanjut) {
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

    riwayat.add({
      'tinggi': tinggi,
      'berat': berat,
      'bmi': bmi,
      'kategori': kategori
    });

    print("\nBMI: ${bmi.toStringAsFixed(2)}");
    print("Kategori: $kategori");

    stdout.write("\nHitung lagi? (y/n): ");
    String jawab = stdin.readLineSync()!;

    if (jawab.toLowerCase() != 'y') {
      lanjut = false;
    }
  }

  print("\n=== Riwayat Perhitungan ===");

  for (var data in riwayat) {
    print(
        "Tinggi: ${data['tinggi']} cm | Berat: ${data['berat']} kg | BMI: ${data['bmi'].toStringAsFixed(2)} | Kategori: ${data['kategori']}");
  }
}