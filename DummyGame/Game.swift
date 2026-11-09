import Foundation

struct Game{
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: Game.minValue...Game.maxValue)
    private(set) var points = 0
    private(set) var score = 0
    
    mutating func calculatePoint(sliderValue: Double){
        self.points = 100-Int(abs(sliderValue-Double(target)))
        self.score+=self.points
    }
    
    mutating func startNewRound(){
        self.target = Int.random(in: Game.minValue...Game.maxValue)
    }
    
    mutating func restartGame(){
        self.target = Int.random(in: Game.minValue...Game.maxValue)
        self.points = 0
        self.score = 0
    }
}
