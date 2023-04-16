import SwiftUI

struct Step4Result: View {
    @State var labRetry: Bool = false
    @State var labHome: Bool = false
    @Binding var backResult : String
    @Binding var arrowResult : String
    @Binding var nextValue : Int
    
    var body: some View {
        
        VStack{
            //            HStack{
            //                Image(systemName: "chevron.left")
            //                    .resizable()
            //                    .frame(width: 20, height: 20, alignment: .leading)
            //                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            //                Spacer()
            //            }
            Text("Step4")
                .font(.system(size: 38))
                .foregroundColor(Color(hex: "121C72"))
            Text("Let's do it in the Lab ")
                .font(.system(size: 28))
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Text("Check the result.")
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: "121C72"))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hex: backResult))
                            .frame(width: 100, height: 80)
                        Text("➔")
                            .font(.system(size: 65))
                            .foregroundColor(Color(hex: arrowResult))
                    }
                    if nextValue == 1 {
                        Text("Fail")
                            .font(.system(size: 24))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("Same")
                            .foregroundColor(Color(hex: "FF0000"))
                    } else if nextValue == 2 {
                        Text("Fail")
                            .font(.system(size: 24))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("green red")
                            .foregroundColor(Color(hex: "FF0000"))
                    } else if nextValue == 3 {
                        Text("SUCCESS")
                            .font(.system(size: 24))
                            .foregroundColor(Color(hex: "121C72"))
                        Text("You have mastered accessibility!")
                            .foregroundColor(Color(hex: "121C72"))
                    } else {
                        Text("Fail")
                            .font(.system(size: 24))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("less")
                            .foregroundColor(Color(hex: "FF0000"))
                    }
                }
            }
            HStack{
                NavigationLink(destination: Step4Lab(), isActive: $labRetry){
                    SmallNavyButton(name: "Retry", action: {labRetry = true})
                }
                NavigationLink(destination: HomeView(), isActive: $labHome){
                    SmallNavyButton(name: "Home", action: {labHome = true})
                }
            }
        }
    }
}

//struct Step4Result_Previews: PreviewProvider {
//    static var previews: some View {
//        Step4Result("4C48FF", "FFFFFF")
//    }
//}
