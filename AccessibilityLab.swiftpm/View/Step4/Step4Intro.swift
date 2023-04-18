import SwiftUI

struct Step4Intro: View {
    @State var labStart: Bool = false
    
    var body: some View {
        VStack{
            Text("Step 4")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("Let's do it in the Lab ")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            Image("s4intro")
                .resizable()
                .frame(width: 379, height: 242)
            Text("Congratulations")
                .font(.custom("The Jamsil 4 Medium", size: 23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
                
            Text("It's finally the last step.\nLet's experiment with color combinations considering accessibility based on what we learned")
            
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
            HStack{
                NavigationLink(destination: Step4Lab(), isActive: $labStart){
                    SmallNavyButton(name: "Start", action: {labStart = true})
                }
            }
        }
    }
}

struct Step4Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step4Intro()
    }
}
