import SwiftUI

struct Step4Result: View {
    @State var labRetry: Bool = false
    @State var labHome: Bool = false
    @Binding var backResult : String
    @Binding var arrowResult : String
    @Binding var nextValue : Int
    
    @Binding var goHome : Bool
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//
    
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
            
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    Text("Check the result.")
                        .foregroundColor(Color(hex: "121C72"))
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hex: backResult))
                            .frame(width: 100, height: 80)
                        Text("➔")
                            .font(.system(size: 65))
                            .foregroundColor(Color(hex: arrowResult))
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                    if nextValue == 1 {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("Same")
                            .foregroundColor(Color(hex: "FF0000"))
                    } else if nextValue == 2 {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("green red")
                            .foregroundColor(Color(hex: "FF0000"))
                    } else if nextValue == 3 {
                        Text("SUCCESS")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "121C72"))
                        Text("You have mastered accessibility!")
                            .font(.system(size: 18, weight: .medium))
                            .lineSpacing(6)
                            .foregroundColor(Color(hex: "121C72"))
                    } else {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                        Text("less")
                            .foregroundColor(Color(hex: "FF0000"))
                    }
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                NavigationLink(destination: Step4Lab(goHome: $goHome), isActive: $labRetry){
                    SmallNavyButton(name: "Retry", action: {presentationMode.wrappedValue.dismiss()})
                }
                
                
//                NavigationLink(destination: HomeView(), isActive: $labHome){
//                    SmallNavyButton(name: "Home", action: {labHome = true})
//                }
                SmallNavyButton(name: "Home", action: {goHome = false})
                
                
//                    .background(
//                        NavigationLink(
//                            destination: Step4Lab(goHome: $labStart), isActive: $labStart, label: {EmptyView()}
//                        )
//                        .isDetailLink(false)
//                    )
            }
        }
    }
}

//struct Step4Result_Previews: PreviewProvider {
//    static var previews: some View {
//        Step4Result("4C48FF", "FFFFFF")
//    }
//}
