import 'dart:io';
import 'dart:math';

void main() {
  // FEATURE: INITIAL SETUP (Branch initial-setup)
  var random = Random();
  int angkaRahasia = random.nextInt(10) + 1; // Angka acak 1-10
  int nyawa = 5;
  bool menang = false;

  print("=== GAME TEBAK ANGKA (1-10) ===");
  print("Kamu punya $nyawa nyawa untuk menebak angka rahasia.");

  print("=== GAME TEBAK ANGKA (1-100) ===");
  print("Kamu punya $nyawa nyawa untuk menebak angka rahasia.");

  List<int> riwayatTebakan = [];

  // FEATURE: GAME LOGIC (Branch game-logic)
  while (nyawa > 0 && !menang) {
    stdout.write("\nMasukkan tebakanmu (Sisa nyawa $nyawa): ");
    
    // INPUT DINAMIS: Mengambil input dari user
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      int tebakan = int.parse(input);
      riwayatTebakan.add(tebakan); // Simpan ke list

      if (tebakan == angkaRahasia) {
        print("Selamat! Tebakanmu BENAR.");
        menang = true;
      } else if (tebakan > angkaRahasia) {
        print("Terlalu BESAR!");
        nyawa--;
      } else {
        print("Terlalu KECIL!");
        nyawa--;
      }
    }
  }
}