import SwiftUI

struct Step3Intro: View {
    @State var quizStart: Bool = false
    
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
