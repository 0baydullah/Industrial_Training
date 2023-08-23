import 'dart:io';

main(){

  var dog = Dog();
  dog.color = "blue";
  dog.age =69;
  stdout.write("${dog.age} years old ${dog.color} dog ");
  dog.eat();

  var cat = Cat();
  cat.color = "pink";
  cat.age =6969;
  stdout.write("${cat.age} years old ${cat.color} cat ");
  cat.eat();

}

class Animal{
  String color="";
  int age = 0;
  void eat(){
    print("is eating !!");
  }
}

class Dog extends Animal{

}

class Cat extends Animal{

}
