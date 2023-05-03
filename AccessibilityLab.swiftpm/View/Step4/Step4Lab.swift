import SwiftUI

let colorList = ["FFFFFF", "FFFA79", "EE8B48","717C24","4C48FF","9E00FF"]

struct Step4Lab: View {
    @State var labCheck: Bool = false
    @State var backResult: String = "4C48FF"
    @State var arrowResult: String = "FFFA79"
    @State var backColor = Color(hex: "4C48FF")
    @State var arrowColor = Color(hex: "FFFA79")
    @State var nextValue: Int = 0
    
    @Binding var goHome : Bool
    
    
    func changeNextValue() -> Int {
        let colorSet = Set([backResult, arrowResult])
        if backResult == arrowResult {
            return 1
        } else if colorSet.contains(colorList[2]) && colorSet.contains(colorList[3]) {
            return 2
        } else if (colorSet.contains(colorList[0]) && colorSet.contains(colorList[3])) || (colorSet.contains(colorList[0]) && colorSet.contains(colorList[4])) || (colorSet.contains(colorList[0]) && colorSet.contains(colorList[5])) || (colorSet.contains(colorList[1]) && colorSet.contains(colorList[3])) || (colorSet.contains(colorList[1]) && colorSet.contains(colorList[4])) || (colorSet.contains(colorList[1]) && colorSet.contains(colorList[5])) {
            return 3
        }
        return 0
    }
    
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
                ZStack{
                    VStack{
                        ZStack{
                            Text("Change the color")
                                .font(.custom("The Jamsil 4 Medium", size: 25))
                                .foregroundColor(Color(hex: "121C72"))
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 330, trailing: 0))
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                                .frame(width: 130, height: 230)
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(arrowColor)
                                    .frame(width: 120, height: 220)
                                HStack{
                                    Image(systemName: "chevron.left.square.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20)
                                        .foregroundColor(backColor)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 180, trailing: 60))
                                    
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20)
                                        .foregroundColor(backColor)
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
                                    .fill(backColor)
                                    .frame(width: 50, height: 30)
                                Text("Send")
                                    .font(.system(size: 15, weight: .medium))
                                    .foregroundColor(arrowColor)
                            }.padding(EdgeInsets(top: 180, leading: 0, bottom: 0, trailing: 0))
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        
                        HStack{
                            Text("Button")
                                .foregroundColor(Color(hex: "121C72"))
                                .font(.custom("The Jamsil 4 Medium", size: 20))
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            Spacer()
                            ForEach(0..<colorList.count) { index in
                                ColorCircle(hexNum: colorList[index])
                                    .onTapGesture {
                                        self.backColor = Color(hex: colorList[index])
                                        self.backResult = colorList[index]
                                    }
                            }
                        }
                        .padding(EdgeInsets(top: -100, leading: 15, bottom: 0, trailing: 15))
                        HStack{
                            Text("Background")
                                .foregroundColor(Color(hex: "121C72"))
                                .font(.custom("The Jamsil 4 Medium", size: 20))
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            Spacer()
                            ForEach(0..<colorList.count) { index in
                                ColorCircle(hexNum: colorList[index])
                                    .onTapGesture {
                                        self.arrowColor = Color(hex: colorList[index])
                                        self.arrowResult = colorList[index]
                                    }
                            }
                        }
                        .padding(EdgeInsets(top: -70, leading: 15, bottom: 0, trailing: 15))
                    }
                }
            }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 30, trailing: 0))
            HStack{
                SmallNavyButton(name: "Check", action: {labCheck = true
                    nextValue = changeNextValue()})
                    .background(
                        NavigationLink(
                            destination: Step4Result(backResult: $backResult, arrowResult: $arrowResult, nextValue: $nextValue, goHome: $goHome), isActive: $labCheck, label: {EmptyView()}
                        )
                        .isDetailLink(false)
                    )
            }
        }
    }
}

//struct Step4Lab_Previews: PreviewProvider {
//    static var previews: some View {
//        Step4Lab()
//    }
//}
