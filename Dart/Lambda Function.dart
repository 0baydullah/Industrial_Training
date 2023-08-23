void main(){

  /// nameless function or annonymous functions are called lambda function
  Function add2nums = (int a, int b){
                        var sum = a+b;
                        print(sum);
                      };

  var multiplyBy3 = (int number){
                        return 3*number;
                      };
  /// calling lambda function
  add2nums(2,4);
  print(multiplyBy3(3));


  /// another way
  Function add = (int a, int b) => print(a+b);
  var mul3 = (int n) => 3*3;

  add(3,3);
  print(mul3(3));
}

void addNums(int a, int b){
  var sum = a+b;
  print(sum);
}
