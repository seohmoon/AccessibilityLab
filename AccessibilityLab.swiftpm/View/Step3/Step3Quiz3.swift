import SwiftUI

struct Step3Quiz3: View {
    @State var goQuiz3Result: Bool = false
    @Binding var ansNum: Int
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
            Text("Q3. Which button is considered accessiblility?")
                .font(.system(size: 19, weight: .medium))
                .lineSpacing(6)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Image("quiz3")
                        .resizable()
                        .frame(width: 350, height: 290)
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                NavigationLink(destination: Step3Result(ansNum: $ansNum, goHome: $goHome), isActive: $goQuiz3Result){
                    SmallNavyButton(name: "1", action: {
                        goQuiz3Result = true
                        ansNum = 5
                    })
                }
                NavigationLink(destination: Step3Result(ansNum: $ansNum, goHome: $goHome), isActive: $goQuiz3Result){
                    SmallNavyButton(name: "2", action: {
                        goQuiz3Result = true
                        ansNum = 6
                    })
                }
            }
        }
    }
}

//struct Step3Quiz3_Previews: PreviewProvider {
//    static var previews: some View {
//        Step3Quiz3()
//    }
//}
//
