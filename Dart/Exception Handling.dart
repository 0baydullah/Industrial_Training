void main(List<String> args) {
  /// ON Clause
  /// 
  print("Case 1 : ");// When u know the execption to be thrown, use ON Clause
  try{
    int result = 12~/0;
    print("The result is $result");
  } on IntegerDivisionByZeroException{
      print("cant divided by Zero");
  }


  print("");print("Case 2 : ");// When u dont know the execption to be thrown, use Catch Clause
  try{
    int result = 12~/0;
    print("The result is $result");
  } catch (e) {
      print("The exception thrown is $e");
  }


    print("");print("Case 3 : ");// Using STACK TRACE to know the events occurred before Exception was thrown
    try{
      int result = 12~/0;
      print("The result is $result");
    } catch (e,s) {
        print("The exception thrown is $e");
        print("STACK TRACE \n $s");
    }


    print("");print("Case 4 : ");// Whether there is an Exception or not, FINALLY Clause is always Executed
    try{
      int result = 12~/3;
      print("The result is $result");
    } catch (e,s) {
        print("The exception thrown is $e");
        print("STACK TRACE \n $s");
    } finally{
      print("This is FINALLY Clause and is always executed.");
    }


    print("");print("Case 5 : ");//Custom Exception
    try{
      depositMoney(-69);
    }catch(e){
      print(DepositException().errorMessage());
    }

}

class DepositException implements Exception{
  String errorMessage(){
    return "You can not enter amount less than 0";
  }
}

void depositMoney(int amount){
  if(amount<0){
    throw new DepositException();
  }
}