import SwiftUI

let colorList = ["FFFFFF", "FFFA79", "EE8B48","717C24","4C48FF","9E00FF"]

struct Step4Lab: View {
    @State var labCheck: Bool = false
    @State var backResult: String = "4C48FF"
    @State var arrowResult: String = "FFFFFF"
    @State var backColor = Color(hex: "4C48FF")
    @State var arrowColor = Color(hex: "FFFFFF")
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
                    .frame(height: 360)
                VStack{
                    Text("Change the color of the button")
                        .font(.custom("The Jamsil 4 Medium", size: 23))
                        .foregroundColor(Color(hex: "121C72"))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(backColor)
                            .frame(width: 100, height: 80)
                        Text("➔")
                            .font(.system(size: 65))
                            .foregroundColor(arrowColor)
                    }
                    HStack{
                        Text("Background ")
                            .foregroundColor(Color(hex: "121C72"))
                            .font(.custom("The Jamsil 4 Medium", size: 20))
                        Spacer()
                        ForEach(0..<colorList.count) { index in
                                ColorCircle(hexnum: colorList[index])
                                    .onTapGesture {
                                        self.backColor = Color(hex: colorList[index])
                                        self.backResult = colorList[index]
                                    }
                            }                    }
                    .padding()
                    HStack{
                        Text("Arrow")
                            .foregroundColor(Color(hex: "121C72"))
                            .font(.custom("The Jamsil 4 Medium", size: 20))
                        Spacer()
                        ForEach(0..<colorList.count) { index in
                                ColorCircle(hexnum: colorList[index])
                                    .onTapGesture {
                                        self.arrowColor = Color(hex: colorList[index])
                                        self.arrowResult = colorList[index]
                                    }
                            }
                    }
                    .padding()
                }
            }
            HStack{
//                NavigationLink(destination: Step4Result(backResult: $backResult, arrowResult: $arrowResult, nextValue: $nextValue), isActive: $labCheck){
//                    SmallNavyButton(name: "Check", action: {labCheck = true
//                        nextValue = changeNextValue()
//                    })
//                }
                
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
