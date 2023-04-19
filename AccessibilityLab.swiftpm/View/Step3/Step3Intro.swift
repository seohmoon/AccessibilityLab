import SwiftUI

struct Step3Intro: View {
    @State var goQuiz1: Bool = false
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
            
            Image("s3intro")
                .resizable()
                .frame(width: 276, height: 260)
            Text("Welcome")
                .font(.custom("The Jamsil 4 Medium", size: 23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 5, leading: 43, bottom: 0, trailing: 30))
            Text("Let's review what we studied in step 2. \nHere are a few examples. \nChoose the answer.")
                .font(.system(size: 17, weight: .medium))
                .lineSpacing(6)
                .padding(EdgeInsets(top: 5, leading: 30, bottom: 10, trailing: 30))
            HStack{
                NavigationLink(destination: Step3Quiz1(goHome: $goHome), isActive: $goQuiz1){
                    SmallNavyButton(name: "Start", action: {goQuiz1 = true})
                }
            }
        }
    }
}

//struct Step3Intro_Previews: PreviewProvider {
//    static var previews: some View {
//        Step3Intro()
//    }
//}
