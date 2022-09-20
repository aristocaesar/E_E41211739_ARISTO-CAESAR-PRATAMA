import 'dart:io';
import 'dart:convert';

// Ternary
void cekNilai(int number) {
  const kkm = 75;
  // IF Ternary
  var lulus = number >= kkm ? true : false;
  if (lulus) {
    print('Nilai ($number) = cukup - LULUS');
  } else {
    print("Nilai ($number) = tidak cukup - TIDAK LULUS");
  }
}

// Werewolf
void wereWolf() {
  // Value
  try {
    bool main = true;
    do {
      print("Masukkan nama : ");
      var nama = stdin.readLineSync(encoding: utf8);
      if (nama.toString() == "") {
        throw "Nama harus terisi!";
      }
      print("Pilihan Peran");
      print("1.Penyihir");
      print("2.Guard");
      print("3.Werewolf");
      print("Masukkan peran ( no.urutan ) : ");
      var peran = stdin.readLineSync(encoding: utf8);
      switch (peran.toString()) {
        case "1":
          print(
              'Selamat datang di Dunia Werewolf, $nama - Halo penyihir $nama , kamu dapat melihat siapa yang menjadi werewolf!.');
          break;
        case "2":
          print(
              'Selamat datang di Dunia Werewolf, $nama - Halo guard $nama , kamu akan membantu melindungi temanmu dari serangan werewolf.');
          break;
        case "3":
          print(
              'Selamat datang di Dunia Werewolf, $nama - Halo werewolf $nama , kamu akan membantu melindungi temanmu dari serangan werewolf.');
          break;
        default:
          throw "$nama , Peran yang kamu pilih tidak tersedia!";
      }
      if (peran.toString() == "") {
        throw "Peran harus dipilih!";
      }
      print("Apakah anda ingin bermain lagi ? (y/n) ");
      var lagi = stdin.readLineSync(encoding: utf8);
      if (lagi != "y") {
        main = false;
        print("Bye!");
      }
    } while (main);
  } catch (e) {
    print(e);
    print("Game gagal dimaikan !");
  }
}

// Perulangan Maju Mundur
void majuMundur(int number) {
  // Increment
  for (int i = 1; i <= number; i++) {
    print(i);
  }
  // Decrement
  for (int i = number; i >= 1; i--) {
    print(i);
  }
}

void main(List<String> args) {
  print("---1.TERNARY---");
  cekNilai(75);
  print("-------------");
  print("---2.WEREWOLF---");
  wereWolf();
  print("-------------");
  print("---3.PERULANGAN MAJU MUNDUR---");
  majuMundur(5);
  print("-------------");
}
