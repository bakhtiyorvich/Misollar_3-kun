void main(){
  int a = -10;
  int b = -18;
  int sum = 0;
// Ko'paytirish

if(b < 0){
  b = b * (-1);
  for(int i = 0; i < b; i++){
    sum += (-a);
  }
} else{
  for(int i = 0; i < b; i++){
    sum += a;
  }
}


  print("Ko'paytma: $sum");
}