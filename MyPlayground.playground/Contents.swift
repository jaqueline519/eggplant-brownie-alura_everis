import UIKit

let caloria1 = 50.5
let caloria2 = 100
let caloria3 = 300
let caloria4 = 400

let totalDeCalorias = [50.5, 100, 300, 500, 600, 25.5]
print(totalDeCalorias)
//
//
////primeira  maneira de escrever o for
//for i in 0...3{
//    print(i)
//    print(totalDeCalorias[i])
//}
////segunda maneira de escrever o for
//for i in 0...totalDeCalorias.count-1 {
//    print(i)
//    print(totalDeCalorias[i])
//}
// Terceira e mais utilizada forma de escrever o for

for caloria in totalDeCalorias {
    print(caloria)
}

