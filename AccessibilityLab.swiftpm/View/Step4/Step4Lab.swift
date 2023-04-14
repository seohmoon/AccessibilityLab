import SwiftUI

struct Step4Lab: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                Spacer()
            }
            Text("Step4")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Let's do it in the Lab ")
                .font(.system(size: 28))
            
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Text("Change the color of the button")
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: "121C72"))
                    
                    Image(systemName: "arrow.forward.square.fill")
                        .resizable()
                        .frame(width: 100, height: 80)
                       
                    Text("Background ")
                        .foregroundColor(Color(hex: "121C72"))
                    Text("Arrow")
                        .foregroundColor(Color(hex: "121C72"))
                }
            }
            HStack{
                SmallNavyButton(name: "Check", action: {})
            }
        }
    }
}

struct Step4Lab_Previews: PreviewProvider {
    static var previews: some View {
        Step4Lab()
    }
}
