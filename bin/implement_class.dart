// import 'package:learining_dart_proper/learining_dart_proper.dart' as learining_dart_proper;

// A person. The implicit interface contains greet()
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => "Hello, $who. I am $_name.";
}

// Implemantation of the Person
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => "Hi $who. Do you know who I am?";
}

String greetBob(Person person) => person.greet("Bob");

void main(List<String> arguments) {
  print(greetBob(Person("Kathy")));
  print(greetBob(Impostor()));
}
