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

void main(List<String> args) {
  print("---1.TERNARY---");
  cekNilai(75);
  print("-------------");
}
