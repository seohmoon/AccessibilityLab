import SwiftUI

struct Step2Intro: View {
    var body: some View {
        VStack{
//            HStack{
//                Image(systemName: "chevron.left")
//                    .resizable()
//                    .frame(width: 20, height: 20, alignment: .leading)
//                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
//                Spacer()
//            }
            Text("Step2")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Study about Guidelines")
                .font(.system(size: 28))
            Image("s2intro")
                .resizable()
                .frame(width: 328, height: 220)
            Text("Welcome")
                .font(.system(size: 20))
            Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
//            HStack{
//                SmallNavyButton(name: "Start", action: {})
//            }
        }
    }
}

struct Step2Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step2Intro()
    }
}
    
