import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int angkaRahasia = random.nextInt(10) + 1; // Angka 1-10
  int tebakan = 0;
  int nyawa = 5;
  print("=== Game Tebak Angka (1-10) ===");

  while (tebakan != angkaRahasia && nyawa > 0) {
    print("\nSisa nyawa: $nyawa");
    tebakan = 42; // input tebakan statis 

    if (tebakan == angkaRahasia) {
      print("Selamat! Tebakanmu benar.");
    } else if (tebakan > angkaRahasia) {
      print("Terlalu besar!");
    } else {
      print("Terlalu kecil!");
    }
    nyawa--;
  }
}