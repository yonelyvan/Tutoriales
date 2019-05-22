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
## Vector

