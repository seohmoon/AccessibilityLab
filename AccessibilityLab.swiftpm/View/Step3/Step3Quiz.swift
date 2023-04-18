import SwiftUI

struct Step3Quiz: View {
    var body: some View {
        VStack{
            Text("Step 3")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("Take a Quiz and Review")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            
      
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

