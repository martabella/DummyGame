import SwiftUI

struct NumberView: View{
    let text: String
    let value: Int
    var body: some View{
        VStack{
            Text(text)
                .padding(.bottom)
            Text("\(value)")
                .frame(width: 72, height: 56)
                .overlay(RoundedRectangle(cornerRadius: 21).stroke())
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(text: "ROUND", value: 0)
    }
}
