
void main(){
  List one = ['a','b'];
  List two = ['a','b'];
  print(checkEqual(one, two));
}
bool checkEqual(List a , List b){
  bool isEqaul = true;
  for(int i = 0 ; i<a.length ; i++){
    if(a[i] == b[i]){
      isEqaul = true;
    }else{
      isEqaul = false;
    }
  }
  return isEqaul;
}