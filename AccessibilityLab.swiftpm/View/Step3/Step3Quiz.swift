import SwiftUI

struct Step3Quiz: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                Spacer()
            }
            Text("Step3")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Take a Quiz and Review")
                .font(.system(size: 28))
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Text("Q1")
                    
                }
            }
            HStack{
                SmallNavyButton(name: "1", action: {})
                SmallNavyButton(name: "2", action: {})
            }
        }
    }
}

struct Step3Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Step3Quiz()
    }
}

