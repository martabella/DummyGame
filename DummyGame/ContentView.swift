//
//  ContentView.swift
//  DummyGame
//
//  Created by Alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var alertVisible = false
    @State private var sliderValue = 20.0
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
            Text("🎯🎯🎯")
                .font(.largeTitle)
            
            Text("89")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .kerning(-1)
                
            SliderView(value: $sliderValue)
                
            Text("\(sliderValue)")
            
            Button("TRY"){
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
                title: Text("Hello"),
                message: Text("This is my first alert"),
                dismissButton: .default(Text("Got it")){print("Alert is close")}
            )
        }
            
    }
}


struct SliderView: View{
    @Binding var value:Double
    
    var body: some View{
        HStack {
            Text("1")
                .fontWeight(.bold)
            Slider(value: $value, in: 1...100)
            Text("100")
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

