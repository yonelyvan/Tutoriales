## Tipos de datos
```dart
void main() {
  int n = 10;
  String str1 = 'hello'; 
  String str2 = "hello2"; 
  bool b = true; 
  
  print(n);
  print(str1);
  print(str2);
  print(b);
}
```

## MAP
```dart
void main() {
  var mapa = {
    // Key:    Value
    'Peru': 'Lima',
    'Chile': 'Lantiago',
    'Venezuela': 'Caracas',
    'Argentina': 'Buenos Aires',
  };
  print(mapa['Bolibia']);  
  	
  //declarando mapa
  var mapa2 = Map();
  mapa2['Peru'] = 'Arequipa';
  mapa2['Peru'] = 'Lima';
  mapa2['Chile'] = 'Santigo';
  mapa2['Aregentina'] = 'Buenos Aires';

  //iterando mapa
  mapa2.forEach( 
    (k,v) => print('${k}: ${v}')
  );
}
```
## class
```dart
class TestClass {   
  TestClass(){
     print("Constructor");
  }
   void hello() {      
      print("Hello World"); 
   } 
}  

void main() {
  TestClass c = new TestClass();   
  c.hello(); 
}
```


