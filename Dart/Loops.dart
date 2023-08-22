import 'dart:io';

void main(List<String> args) {


  /// For in loop
  /// ------------------------
  var nums = [1,2,3,4,5,6,7];

  for(var nm in nums){
    stdout.write("$nm ");
  }
  stdout.writeln("");

  /// For loop

  var num = 6;
  for(int i=0 ; i<=num ; i++){
    stdout.write("$i ");
  }
  print("");

  /// While loop

  int i=0;
  while(i<=num){
    stdout.write("$i ");
    i++;
  }
  print("");

  /// do while loop

  i=0;
  num =3;
  do{
    stdout.write("$i ");
    i++;
  }while(i<=num);
  print("");


  // break and continue 

  int number = 20;

  for(int i=0 ; i<100 ; i++){
    if(i%2==2)
      continue;
    else stdout.write("$i ");
    if(i > number) break;
  }

}