import SwiftUI

struct Step2Intro: View {
    var body: some View {
        VStack{
            Text("Step 2")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("Study about Guidelines")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            Image("s2intro")
                .resizable()
                .frame(width: 328, height: 220)
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
            Text("Welcome")
                .font(.custom("The Jamsil 4 Medium", size: 23))
            Text("Let's review what we studied in step 2. \nHere are a few examples. \nWhich display is considered accessiblility? \nChoose the answer.")
                .padding()
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
    
