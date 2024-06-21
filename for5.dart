
void main(){
 num n = 567;
 var temp = n, digit = 0;
 while(temp != 0){
  temp = temp ~/ 10;
  digit ++;
 }
 int k = 1, ten_power = 1;

 while(k < digit){
  ten_power = ten_power * 10;
  k++;
 } 
 while(digit >= 1){
  temp = n ~/ ten_power;

 if(digit % 3 == 2 || digit == 2){
    switch(temp){
    case 1: print("o'n "); break;
    case 2: print("yigirma "); break;
    case 3: print("o'ttiz "); break;
    case 4: print("qirq "); break;
    case 5: print("ellik "); break;
    case 6: print("oltmish "); break;
    case 7: print("yetmish "); break;
    case 8: print("sakson "); break;
    case 9: print("to'qson "); break;
    default: print('');
    }
  }    else{ 
    switch(temp){
    case 1: print("bir "); break;
    case 2: print("ikki "); break;
    case 3: print("uch "); break;
    case 4: print("to'rt "); break;
    case 5: print("besh " ); break;
    case 6: print("olti " ); break;
    case 7: print("yetti " ); break;
    case 8: print("sakkiz ") ; break;
    case 9: print("to'qqiz " ); break;
    default:print('');

  }
  }
  if(digit % 3 == 0){
    print("yuz");
    switch(digit){
      case 4: print("ming"); break;
      case 7: print("million"); break;
      case 10: print("milliard"); break;
    }
  
  }
    n = n % ten_power;
    ten_power ~/= 10;
    digit--;
  }
  
  
  
}   