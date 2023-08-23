main(){
  //var shape = Shape();  /// cannot instantiate abstract Class
  var rectangle = Rectangle();
  rectangle.draw();
}

abstract class Shape{ // abstract class
  void draw(); // abstract method // abstract method can be only present in abstract classes
}

class Rectangle extends Shape{
  void draw(){
    print("drawing rectangle");
  }
}