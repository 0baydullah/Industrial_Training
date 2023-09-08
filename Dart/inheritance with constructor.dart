import 'dart:io';

main(){

  var dog1 = Dog("bangla kutta", "blue");
  print("");

  var dog2 = Dog("Bull Dog", "Green");
  print("");

  var dog3 = Dog.named("Indian Kutta" , "pink");
  print("");
  

}

class Animal{
  String color="";
  Animal(String color){
    print("Animal class constuctor");
  }
}

class Dog extends Animal{
  String bread ="";
  Dog(String bread , String color) : super(color){
    print("Dog class constructor");
  }

  Dog.named(String bread, String color) : super(color){
    print("Dog named class constructo");
  }
}

