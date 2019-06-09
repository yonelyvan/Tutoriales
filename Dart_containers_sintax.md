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
## Operadores
```dart
  final nombre = "Argel"; //debe declararse e inicializarse
  //or final String nombre = "Argel";
  const pi = 3.1415; //se ejecuta en tiempo de compilacion
  
  //operadores 
  expr++    expr-- 
  &&    ||
  a++
  a + b
  a = b
  a == b
  c ? a : b
  a is T
  
  if ((n % i == 0) && (d % i == 0)) … //%modulo
  
  // Asigna valor a variable a
  a = value;
  // Asigna valor a b, si b es nulo; de lo contrario b se mantiene igual
  b ??= value;

```
## Funciones, Funciones arrow y Anónima
```dart
  //funciones normales
  int suma(int a, int b){
    return a+b;
  }

  //arrow - like a inline function
  int suma(int a, int b) => a+b; 

  //anonima
  List list = ['Rojo','Azul','Verde'];
  list.forEach( (color){
    print (color);
    //if(color== ...){...}
  });
  

```
## Bucles
```dart
  //with list
  for(int i =0; i<10; i++){...}
  
  for(String color in list){...}
  
  list.forEach( (color){ 
    print(color); 
    //...
  });
  
  while(true){ ... }
  
  do{
    //...
  }while(true);
  
  // existe: break, continue
  
```

## Parametros
```dart
  //[opcionales]
  void param(int a, int b, [int c]){
    print("$a, $b, $c");
  }
  param(1, 2);
  
  //{opcional con label}
  void param(int a, {String color = "#000"}){
     print("$a, $color");
   }
   param(1, color:"#fff" );
   param(1);
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

//---------------------
  Map map; //or Map<int,String> map;
  map = {1:"Rojo", 2:"Verde"};
  print(map);
  
  map[3] = "Azul";
  print(map);
  
  //Dynamic
  Map<String, dynamic> map2 = {};
  map2["A"] = 2000;
  map2["B"] = 100;
  print(map2);
  
  //remove
  print(map);
  map.remove(2); //{1: Rojo, 2: Verde, 3: Azul}
  print(map); //{1: Rojo, 3: Azul}
  
  //Empty, size
  print(map.isEmpty);
  print(map.length);
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
### Constructores
```dart
class Empleado{
    String nombre;

    //por defecto
    Empleado(){
      //...  
    }

    //con parametros
    Empleado (int a, ...){
      //...
    }

    //inicializando valores
    Empleado (this.nombre);

  }
```

### Tipos de dariables 
```dart
class Empleado{
    String nombre; //variable publica
    String _apellido; // variable priavda
 }

```
### Set get
```dart
  void set nombre(String nombre) => _nombre  = nombre;
  String get nombre => _nombre;
```

