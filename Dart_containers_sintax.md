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
### Herencia
```dart
class Empleado{
  var id;
  var nombre;
  double salario;

  void calcularSalario(){
    print("salario ${salario*5.5}");
  }
}

class Chofer extends Empleado{
  String vehiculoAsignado;
  
  void manejarVehiculo(){
    print("manejando ");
  }
}

class Vendedor extends Empleado{
  String idCliente;
  
  void venderACliente(){
    print("vender ");
  }
}

void main() {
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.nombre = "yolo";
  chofer.salario = 100.0;
  chofer.vehiculoAsignado = "de trabajo";
  chofer.manejarVehiculo();
  chofer.calcularSalario();
  
  Vendedor vendedor = Vendedor();
  vendedor.id = 2;
  vendedor.nombre = "pedro";
  vendedor.salario = 120.0;
  vendedor.venderACliente();
  vendedor.calcularSalario();
} 
```
### Clases Abstractas
```dart
//no puede ser instanciado
abstract class Empleado{
  var id;
  var nombre;
  var salario;
  
  void calcularSalario(){
    print("Saliro es: ${salario*5.5}");
  }
  void actividad();
}

class Chofer extends Empleado{
  var vehivulo;
 
  @override
  void actividad(){
    print("manejar");
  }
}

class Cajero extends Empleado{
  var vehivulo;

  @override
  void actividad(){
    print("cobrar a clientes");
  }
  @override
  void calcularSalario(){
    print("Saliro es: ${salario*5.5+100}");
  }
}

void main() {
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.nombre = "Roberto";
  chofer.salario = 100;
  chofer.actividad();
  chofer.calcularSalario();
  
  Cajero cajero = Cajero();
  cajero.id = 1;
  cajero.nombre = "Pedro";
  cajero.salario = 120;
  cajero.actividad();
  cajero.calcularSalario();
} 
```

### Abstract Ejemplo
```
abstract class Animal{
  int patas;
  void emitirSonido();
}

class Perro implements Animal{
  int patas;
  int colas;
  void emitirSonido() => print("GUAU GUAU GUAU");
}

class Gato implements Animal{
  int patas;
  int colas;
  void emitirSonido() => print("MIAU MIAU MIAU");
}


void main() {
  Animal perro = new Perro();
  Animal gato = new Gato();
  Perro perro2 = new Perro();
  Gato gato2 = new Gato();
  
  List<Animal> list = new List<Animal>();
  list.add(perro);
  list.add(gato);
  list.add(gato2);
  list.add(perro2);
  
  list.forEach((e){
    e.emitirSonido();
  });
}
```

### Interfaces implicitas
```dart
class Empleado{
	var id;
  var nombre;
  var salario;
  void calcularSalario(){
    print("salio es: ${salario*5.5}");
  }
}

class Conducta{
	void buenaConducta(){
    print("buen comportamiento");
  }
}

//implemnta: {(metodo , variables) de empleado} U {(metodo , variables) de Conducta} 
class Chofer implements Empleado, Conducta{
	var id = 1;
  var nombre = "Roberto";
  var salario = 100;
  
  @override
  void calcularSalario(){
     print("salio es: ${salario*5.5}");
  }
  
  @override
  void buenaConducta(){
    print("Chofer se comporto inadecuadamente");
  }
  
}
//implemnta: {(metodo , variables) de empleado} U {(metodo , variables) de Conducta} 
class Cajero implements Empleado, Conducta{
	var id;
  var nombre;
  var salario;
  
  @override
  void calcularSalario(){
     print("salio es: ${salario*5.5+100}");
  }
  
  @override
  void buenaConducta(){
    print("cajero se comporto adecaudamente");
  }
}

void main() {
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.salario = 100;
  chofer.nombre = "Roberto";
  chofer.calcularSalario();
  chofer.buenaConducta();
  
  Cajero cajero = Cajero();
  cajero.id = 1;
  cajero.salario = 100;
  cajero.nombre = "Roberto";
  cajero.calcularSalario();
  cajero.buenaConducta();
} 
```

