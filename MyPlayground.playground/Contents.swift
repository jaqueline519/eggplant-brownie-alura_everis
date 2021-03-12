import UIKit

let totalDeCalorias = [50.5, 100]

// Array também pode ser inicializado no seguinte formato: [Double]
func todasCalorias( totalDeCalorias: Array<Double>) -> Double {
    var total = 0.0
    
    for caloria in totalDeCalorias {
        total += caloria
    }
    
    return total
}

let total = todasCalorias(totalDeCalorias: [50.5, 100, 200])

print(total)
