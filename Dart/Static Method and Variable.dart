void main(){

  print(Circle.pi); /// Static method and variable direcly call by their Class Name.Their Name and cant create any instance of its object.
  Circle.calculate();

  /// Static variables are lazily to initialized
  /// its mean they are not initialized until they are used in program
  /// they consumed memory only when they are used and its once

}

class Circle{
  static const double pi = 3.14;
  static int num = 6;
  int number=0;
  static void calculate(){
    print("something need to calculate");
    // number = 8;  // not allowed to use or call any instance variable or function in static method
    //this.number=3; // also cant use #this# keyword
    num = 9; // in static function only static method and variables can be accessed.
  }
}