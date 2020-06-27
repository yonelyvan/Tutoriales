//info: https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
//compile: $ swift test.swift

/*
comentario largo
*/

//data types
let pi = 3.14159//constante, no puede cambiarse despues
var b = 1 //puede cambiarse despues
b=2

var name: String //tipo de dato
var age,dni:Double

//booleans true false
// (a != 0), (a && b), (a || b)
/*if(){
    ...
}else{
    ...
}*/

let (x, y) = (1, 2)// x= 1,  y=2

//operadores {+ - * / }
print("Hello"+" "+"world") //concatenacion

//bucles for
let list = ["a", "b", "c", "d"]

for i in 0...(list.count-1){
    print("Item: \(list[i])")
}

for e in list {
    print("foreach Item: \(e)")
}

var i=10
while i > 0 {
   print(">>>\(i)")
   i-=1
}


//arrays
var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList.append("bread")
print(shoppingList)


//functions
func greet(name: String) -> String {
    let saludo = "hola, " + name + "!"
    return saludo
}

func suma(a:Int, b: Int)-> Int{
    return a+b
}

print(greet(name:"nik"))
print(suma(a:3,b:7))


//vector

//map


// struturas
struct Point{
    var x = 0
    var y = 0
}
var point = Point(x:11,y:33)
print(point) // point.x point.y 











