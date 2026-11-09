
import SwiftUI

struct BackgroundView: View {
    
    @Binding var game:Game
    
    @State var sheetIsVisible = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
            VStack{
                HStack{
                    Button(action: {
                        game.restartGame()
                    }, label: {
                        SymbolView(symbolName: "arrow.clockwise")
                    }).foregroundColor(.primary)
                    
                    Spacer()
                    Button(action: {
                        //TODO Show sheet
                        sheetIsVisible = true
                    }, label: {
                        SymbolView(symbolName: "list.dash")
                    }).foregroundColor(.primary)
                    
                    
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: 0)
                }
            }.padding()
        }.sheet(isPresented: $sheetIsVisible) {
            MarksView()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
