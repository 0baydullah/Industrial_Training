void main(List<String> args) {

  // if else ladder
  var num = 69;
  if(num == 69 && num != 0)
    print("perfect number");
  else if(num != 69 && num != 0)
    print("common number");
  else print("its 0 ");


  // Conditional expression
  var isRaining = true;
  var isSunny = true;

  isRaining ? print("keep umbrella") : print("go outside");
  print(isSunny ? "lets go outside" : "keep umbrella");

  var a=3, b=5;
  var min = a<b ? a : b;
  print(min);


  /// exp1 ?? exp2;
  /// if exp1 is not null then return exp1 else exp2
  
  var passcode = 6969 ;

  print (passcode ?? 1234);



  ///switch case statements
  
  var grade = "a";

  switch(grade){
    
    case "a" :
      print("Your grade is A");
      break;

    case "b" :
      print ("Your grade is B");
      break;

    case "c" :
      print("Your grade is C");
      break;
    
    default :
      print("Invalid Grade");
  }
  


}