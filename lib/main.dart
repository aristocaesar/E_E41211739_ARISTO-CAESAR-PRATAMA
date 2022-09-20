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

// Perulangan Maju Mundur
void majuMundur(int number) {
  for (int i = 1; i <= number; i++) {
    print(i);
  }
  for (int i = number; i >= 1; i--) {
    print(i);
  }
}

void main(List<String> args) {
  print("---1.TERNARY---");
  cekNilai(75);
  print("-------------");
  print("---3.PERULANGAN MAJU MUNDUR---");
  majuMundur(5);
  print("-------------");
}
