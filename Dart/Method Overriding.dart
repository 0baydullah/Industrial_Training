import 'dart:io';

main(){

  var dog = Dog();
  // dog.age =69;
  // stdout.write("${dog.age} years old ${dog.color} dog ");
  dog.eat();
  print(dog.color);

}

class Animal{
  String color="Green";
  int age = 0;
  void eat(){
    print("Animal is eating !!");
  }
}

class Dog extends Animal{
  String color = "cyan";
  eat(){
    print("Dog is Eating");
    super.eat();
    }
  }

class Cat extends Animal{

}
