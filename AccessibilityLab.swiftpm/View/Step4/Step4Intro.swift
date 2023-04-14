import SwiftUI

struct Step4Intro: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                Spacer()
            }
            Text("Step4")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Let's do it in the Lab ")
                .font(.system(size: 28))
            Image("s4intro")
                .resizable()
                .frame(width: 379, height: 242)
            Text("Congratulations")
                .font(.system(size: 20))
            Text("It's finally the last step.\nLet's experiment with color combinations considering accessibility based on what we learned")
            HStack{
                SmallNavyButton(name: "Start", action: {})
            }
        }
    }
}

struct Step4Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step4Intro()
    }
}
