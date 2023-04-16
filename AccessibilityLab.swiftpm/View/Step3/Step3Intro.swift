import SwiftUI

struct Step3Intro: View {
    @State var quizStart: Bool = false
    
    var body: some View {
        VStack{
//            HStack{
//                Image(systemName: "chevron.left")
//                    .resizable()
//                    .frame(width: 20, height: 20, alignment: .leading)
//                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
//                Spacer()
//            }
            Text("Step3")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Take a Quiz and Review")
                .font(.system(size: 28))
            Image("s3intro")
                .resizable()
                .frame(width: 276, height: 260)
            Text("Welcome")
                .font(.system(size: 20))
            Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
            HStack{
                NavigationLink(destination: Step3Quiz(), isActive: $quizStart){
                    SmallNavyButton(name: "Start", action: {quizStart = true})
                }
            }
        }
    }
}

struct Step3Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step3Intro()
    }
}
