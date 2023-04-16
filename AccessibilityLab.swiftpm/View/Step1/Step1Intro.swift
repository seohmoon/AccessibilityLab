import SwiftUI

struct Step1Intro: View {
    var body: some View {
        VStack{
//            HStack{
//                Image(systemName: "chevron.left")
//                    .resizable()
//                    .frame(width: 20, height: 20, alignment: .leading)
//                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
//                Spacer()
//            }
            Text("Step1")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("What is Accessibility?")
                .font(.system(size: 28))
            Image("s1intro")
                .resizable()
                .frame(width: 296, height: 292)
            Text("Design with accessibility in mind.")
                .font(.system(size: 20))
            Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
//            HStack{
//                SmallNavyButton(name: "Start", action: {})
//            }
        }
    }
}

struct Step1Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step1Intro()
    }
}

