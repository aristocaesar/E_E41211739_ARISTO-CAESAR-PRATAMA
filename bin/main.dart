import 'dart:io';
import 'dart:convert';

// Ternary
void cekCuaca() {
  print("Apakah cuaca hujan ? (y/n)");
  var cuaca = stdin.readLineSync(encoding: utf8);
  // IF Ternary
  cuaca == "y"
      ? print('Cuaca hujan, gunakan payung!')
      : print("Cuata tidak hujan, tidak perlu menunggunakan payung");
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
      print("Pilihan Peran :");
      print("1.Penyihir");
      print("2.Guard");
      print("3.Werewolf");
      print("Masukkan peran ( no.urutan ) : ");
      var peran = stdin.readLineSync(encoding: utf8);
      if (peran.toString() == "") {
        throw "Peran harus dipilih!";
      }
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
void majuMundur() {
  print("Masukkan angka :");
  int number = int.parse(stdin.readLineSync(encoding: utf8).toString());
  print("-");
  // Increment
  print("LOOPING PERTAMA");
  for (int i = 1; i <= number; i++) {
    print("$i I Love Coding");
  }
  // Decrement
  print("LOOPING KEDUA");
  for (int i = number; i >= 1; i--) {
    print("$i I will become a mobile developer");
  }
}

void main(List<String> args) {
  print("---1.TERNARY---");
  cekCuaca();
  print("-------------");
  print("---2.WEREWOLF---");
  wereWolf();
  print("-------------");
  print("---3.PERULANGAN MAJU MUNDUR---");
  majuMundur();
  print("-------------");
}
