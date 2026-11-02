//
//  ContentView.swift
//  DummyGame
//
//  Created by Alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertVisible = false
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
            Text("🎯🎯🎯")
                .font(.largeTitle)
            
                Text("\(game.target)")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .kerning(-1)
                
                SliderView(value: $sliderValue, min: Game.minValue, max: Game.maxValue)
                
            Text("\(sliderValue)")
            
            Button("TRY"){
                game.calculatePoint(sliderValue: sliderValue)
                self.alertVisible = true
            }
            .font(.title3)
            .foregroundColor(Color.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(21)
            
        }
        .padding()
        }.alert(isPresented: $alertVisible){
            Alert(
                title: Text("Congratulations "),
                message: Text("Your win \(game.points) points"),
                dismissButton: .default(Text("Got it")){
                    game.startNewGame()
                    self.sliderValue = Double(Game.maxValue-Game.minValue)/2.0
                    
                }
            )
        }
            
    }
}


struct SliderView: View{
    
    @Binding var value:Double
    let min : Int
    let max: Int
    
    var body: some View{
        HStack {
            Text("\(min)")
                .fontWeight(.bold)
            Slider(value: $value, in: Double(min)...Double(max))
            Text("\(max)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 480, height: 320))
        ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

