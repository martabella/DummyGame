import Foundation

struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    
    mutating func calculatePoint(sliderValue: Double){
        self.points = 100-Int(abs(sliderValue-Double(target)))
    }
}
