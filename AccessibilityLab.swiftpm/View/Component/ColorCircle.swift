import SwiftUI

struct ColorCircle: View{
    var hexnum : String
//    var action: () -> Void
    var body: some View{
        Circle()
            .fill(Color(hex: hexnum))
            .frame(width: 25)
            
    }
}
struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(hexnum: "FFADAD")
    }
}
