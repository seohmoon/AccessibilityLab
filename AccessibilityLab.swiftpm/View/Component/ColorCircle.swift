import SwiftUI

struct ColorCircle: View{
    var hexNum: String
    var body: some View{
        Circle()
            .fill(Color(hex: hexNum))
            .frame(width: 25)     
    }
}
struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(hexNum: "FFADAD")
    }
}
