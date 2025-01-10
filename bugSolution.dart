```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  void myMethod() {
    //Properly handle the case where _myVariable might be null
    print(_myVariable ??= 0); //Using ??= to assign a default value if null. Alternatively, use a null check before accessing _myVariable.
  }
}

void main() {
  MyClass obj = MyClass(null);
  obj.myMethod();
  MyClass obj2 = MyClass(10);
  obj2.myMethod();
}
```