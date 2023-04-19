import SwiftUI

struct Step3Result: View {
    @State var goQuiz2: Bool = false
    @State var goQuiz3: Bool = false
    @Binding var ansNum : Int
    @Binding var goHome: Bool
    
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
            Text("Q3. Which button is considered accessiblility?")
                .font(.system(size: 19, weight: .medium))
                .lineSpacing(6)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
            ZStack{
                Rectangle()
                    .fill(Color(hex: "EFEFEF"))
                    .frame(height: 360)
                VStack{
                    if ansNum == 2 || ansNum == 3 || ansNum == 6 {
                        Image(systemName: "o.circle.fill").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .foregroundColor(.green)
                        Text("SUCCESS")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "121C72"))
                    } else {
                        Image(systemName: "x.circle.fill").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .foregroundColor(.red)
                        Text("Fail")
                            .font(.custom("The Jamsil 4 Medium", size: 23))
                            .foregroundColor(Color(hex: "FF0000"))
                    }
                    if ansNum == 1 || ansNum == 2 {
                        Text("The goal of mobile accessibility is to provide a better experience for all users.")
                            .font(.system(size: 18, weight: .medium))
                            .lineSpacing(6)
                            .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 35))
                    } else if ansNum == 3 || ansNum == 4 {
                        Text("Increase the size of meaningful interface icons as font size increases. If you use interface icons to communicate important information, make sure they are easy to view at larger font sizes, too. ")
                            .font(.system(size: 18, weight: .medium))
                            .lineSpacing(6)
                            .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 35))
                    } else {
                        Text("To make it comfortable for a user to tap on buttons we followed the rules that buttons should be min 9 mm both high and wide and there should be enough free space around them.")
                            .font(.system(size: 18, weight: .medium))
                            .lineSpacing(6)
                            .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 35))
                    }      
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                if ansNum == 1 || ansNum == 2 {
                    SmallNavyButton(name: "Next", action: {goQuiz2 = true})
                        .background(
                            NavigationLink(
                                destination: Step3Quiz2(ansNum : $ansNum, goHome: $goHome), isActive: $goQuiz2, label: {EmptyView()}
                            )
                            .isDetailLink(false)
                        )
                } else if ansNum == 3 || ansNum == 4 {
                    SmallNavyButton(name: "Next", action: {goQuiz3 = true})
                        .background(
                            NavigationLink(
                                destination: Step3Quiz3(ansNum : $ansNum, goHome: $goHome), isActive: $goQuiz3, label: {EmptyView()}
                            )
                            .isDetailLink(false)
                        )
                } else {
                    SmallNavyButton(name: "Home", action: {goHome = false})
                }
            }
        }
    }
}

//struct Step3Result_Previews: PreviewProvider {
//    static var previews: some View {
//        Step3Result()
//    }
//}
