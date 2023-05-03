import SwiftUI

struct Step3Quiz1: View {
    @State var ansNum: Int = 0
    @State var goQuiz1Result: Bool = false
    @Binding var goHome: Bool
    
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
            Text("Q1. Choose the correct answer from the following.")
                .font(.system(size: 19, weight: .medium))
                .lineSpacing(6)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Text("The reason for the development considering accessibility is only for the convenience of the blind and the deaf.")
                        .font(.custom("The Jamsil 4 Medium", size: 26))
                        .lineSpacing(6)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 35))
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                NavigationLink(destination: Step3Result(ansNum: $ansNum, goHome: $goHome), isActive: $goQuiz1Result){
                    SmallNavyButton(name: "O", action: {
                        goQuiz1Result = true
                        ansNum = 1
                    })
                }
                NavigationLink(destination: Step3Result(ansNum: $ansNum, goHome: $goHome), isActive: $goQuiz1Result){
                    SmallNavyButton(name: "X", action: {
                        goQuiz1Result = true
                        ansNum = 2
                    })
                }
            }
        }
    }
}
