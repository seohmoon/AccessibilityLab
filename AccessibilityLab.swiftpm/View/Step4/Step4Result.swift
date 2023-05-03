import SwiftUI

struct Step4Result: View {
    @State var labRetry: Bool = false
    @State var labHome: Bool = false
    @Binding var backResult: String
    @Binding var arrowResult: String
    @Binding var nextValue: Int
    @Binding var goHome: Bool
    
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
                    .frame(height: 460)
                VStack{
                    Text("Check the result.")
                        .foregroundColor(Color(hex: "121C72"))
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: -15, trailing: 0))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 130, height: 230)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: arrowResult))
                                .frame(width: 120, height: 220)
                            HStack{
                                Image(systemName: "chevron.left.square.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                                    .foregroundColor(Color(hex: backResult))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 180, trailing: 60))
                                
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                                    .foregroundColor(Color(hex: backResult))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 180, trailing: 0))
                                
                            }.frame(width: 120, height: 220)
                        }
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 120, height: 140)
                        Text("Hello. \nThank you for your email.\nI'd like to change the reservation date to the next day, is it possible?\nPlease reply.\n")
                            .font(.system(size: 10, weight: .medium))
                            .frame(width: 120, height: 140)
                            .padding(EdgeInsets(top: 140, leading: 95, bottom: 150, trailing: 90))
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: backResult))
                                .frame(width: 50, height: 30)
                            Text("Send")
                                .font(.system(size: 15, weight: .medium))
                                .foregroundColor(Color(hex: arrowResult))
                        }.padding(EdgeInsets(top: 180, leading: 0, bottom: 0, trailing: 0))
                    }.padding(EdgeInsets(top: -60, leading: 0, bottom: -90, trailing: 0))
                    
                    if nextValue == 1 {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        Text("The color of the button and background is the same.")
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 40, trailing: 0))
                    } else if nextValue == 2 {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        Text("Red-green blindness cannot distinguish between the buttons.")
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 5, leading: 10, bottom: 40, trailing: 10))
                    } else if nextValue == 3 {
                        Text("SUCCESS")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "121C72"))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        Text("You have mastered accessibility!")
                            .font(.system(size: 18, weight: .medium))
                            .lineSpacing(6)
                            .foregroundColor(Color(hex: "121C72"))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 40, trailing: 0))
                    } else {
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        Text("The contrast between the two colors is too weak.")
                            .foregroundColor(Color(hex: "FF0000"))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 40, trailing: 0))
                    }
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                NavigationLink(destination: Step4Lab(goHome: $goHome), isActive: $labRetry){
                    SmallNavyButton(name: "Retry", action: {presentationMode.wrappedValue.dismiss()})
                }
                SmallNavyButton(name: "Home", action: {goHome = false})
            }
        }
    }
}

//struct Step4Result_Previews: PreviewProvider {
//    static var previews: some View {
//        Step4Result("4C48FF", "FFFFFF")
//    }
//}
