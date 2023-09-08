/// Dart does not have any special syntax to declare INTERFACE
/// An INTERFACE is used when you need concreate implementation of all of its functions within its sub class
/// can #implement# multiple classes


void main(List<String> args) {
  var tv = Tv();
  tv.volDown();
  tv.volUp();
  tv.anotherMethod();
}

class AnotherClass{
  void anotherMethod(){
    
  }
}

class Remote{
  void volUp(){
    print("volume up from remote");
  } 
  void volDown(){
    print("volume down from remote");
  } 
}

class Tv implements Remote , AnotherClass{ // cannot extends multiple classes
  void volUp(){
    print("volume up from tv");
  } 
  void volDown(){
    print("volume down from tv");
  } 
  void anotherMethod(){
    print("another method");
  }
}