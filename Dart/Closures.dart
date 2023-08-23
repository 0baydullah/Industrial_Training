void main(List<String> args) {
  // Def1 : A closure is a function that has access to the apren scope even after the scope has closed;
  String message = "dart is good";

  Function showMessage = (){
    message = "dart is super";
    print(message);
  };
  showMessage();


  //def2 : A closure is a function objec that has access to variable in its lexical scope even when the function is used outside of its original scope

  Function talk = (){

    String msg = "hi";

    Function say = (){
      msg = "hello";
      print(msg);
    };
    return say;
  };

  Function speak = talk();

  speak();



}