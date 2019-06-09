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
  print(r"sd$%$asdf\nasdf"); //en raw imprime tal cual
}
```

## List
```dart
  List list;
  list = ['Negro','Rojo'];
  list.add('Rosa');
  print(list);
  
  List<int> list_num;
  list_num = [1,2];
  list_num.add(3);
  print(list_num);
  list_num.removeLast();
  print(list_num);
  
  List<String> list_coloraux;
  list_coloraux = ["Negro","Rojo"];
    
  print(list_coloraux);
  print("originial: $list");
  //union
  list.addAll(list_coloraux);
  print("union: $list");
  
  //remove
  list.removeAt(1);
 	print("remove[1]: $list");
```
## Set
```dart
  Set set;
  set = Set.from(['Argel','Juan','Pedro']);
  print(set); //{Argel, Juan, Pedro}
  set.add('Erika');
  print(set); //{Argel, Juan, Pedro, Erika}
  set.remove('Argel');
  print(set);
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


