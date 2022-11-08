int a = 30;
int b = 30;
int c = 120;


boolean IsAngel(int a, int b, int c){
  if (a+b+c==180&&a*b>0&&a*c>0&&b*c>0){
    return true;
  }
  else{
    return false;
  }
}

void setup(){
  println(a+","+b+","+c+"IsAngle "+IsAngel(a,b,c));
 
}
