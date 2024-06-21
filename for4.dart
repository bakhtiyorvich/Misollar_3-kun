import 'dart:math';

void main(){
  double n = 123457866;
  num qoldiq;
  int sum = 0;
  String str = "";

  // Raqamlar sonini aniqlash
  for (int i = 1; i <= n; i *= 10) {
    sum += 1;
  }

  var daraja = pow(10, sum - 1);

  for (num i = daraja; i >= 1; i /= 10) {
    qoldiq = n ~/ i;

    if (sum % 3 == 2 || sum == 2) {
      switch (qoldiq) {
        case 1: str += "o'n "; break;
        case 2: str += "yigirma "; break;
        case 3: str += "o'ttiz "; break;
        case 4: str += "qirq "; break;
        case 5: str += "ellik "; break;
        case 6: str += "oltmish "; break;
        case 7: str += "yetmish "; break;
        case 8: str += "sakson "; break;
        case 9: str += "to'qson "; break;
        default: str += '';
      }
    } else {
      switch (qoldiq) {
        case 1: str += "bir "; break;
        case 2: str += "ikki "; break;
        case 3: str += "uch "; break;
        case 4: str += "to'rt "; break;
        case 5: str += "besh "; break;
        case 6: str += "olti "; break;
        case 7: str += "yetti "; break;
        case 8: str += "sakkiz "; break;
        case 9: str += "to'qqiz "; break;
        default: str += '';
      }
    }

    if (sum % 3 == 0) {
      str += "yuz ";
    }

    switch (sum) {
      case 4: str += "ming "; break;
      case 7: str += "million "; break;
      case 10: str += "milliard "; break;
    }

    n = n % i;
    sum--;
  }

  print(str);
}
