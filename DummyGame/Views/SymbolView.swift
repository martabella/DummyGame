import SwiftUI

struct SymbolView: View{
    let symbolName:String
    var body: some View{
        Image(systemName: symbolName)
        .font(.largeTitle)
        .frame(width: 56, height: 56)
        .overlay(Circle().stroke())
    }
}

struct SymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolView(symbolName: "list.dash")
    }
}
