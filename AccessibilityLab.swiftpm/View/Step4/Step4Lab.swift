import SwiftUI

let colorList = ["FFFFFF", "FFFA79", "EE8B48","717C24","4C48FF","9E00FF"]

struct Step4Lab: View {
    @State var labCheck: Bool = false
    @State var backResult: String = "4C48FF"
    @State var arrowResult: String = "FFFFFF"
    @State var backColor = Color(hex: "4C48FF")
    @State var arrowColor = Color(hex: "FFFFFF")
    
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
                    Text("Change the color of the button")
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: "121C72"))
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
                        Spacer()
                        ColorCircle(hexnum: colorList[0])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[0])
                                self.backResult = colorList[0]
                            }
                        ColorCircle(hexnum: colorList[1])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[1])
                                self.backResult = colorList[1]
                            }
                        ColorCircle(hexnum: colorList[2])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[2])
                                self.backResult = colorList[2]
                            }
                        ColorCircle(hexnum: colorList[3])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[3])
                                self.backResult = colorList[3]
                            }
                        ColorCircle(hexnum: colorList[4])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[4])
                                self.backResult = colorList[4]
                            }
                        ColorCircle(hexnum: colorList[5])
                            .onTapGesture {
                                self.backColor = Color(hex: colorList[5])
                                self.backResult = colorList[5]
                            }
                    }
                    .padding()
                    HStack{
                        Text("Arrow")
                            .foregroundColor(Color(hex: "121C72"))
                        Spacer()
                        ColorCircle(hexnum: colorList[0])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[0])
                                self.arrowResult = colorList[0]
                            }
                        ColorCircle(hexnum: colorList[1])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[1])
                                self.arrowResult = colorList[1]
                            }
                        ColorCircle(hexnum: colorList[2])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[2])
                                self.arrowResult = colorList[2]
                            }
                        ColorCircle(hexnum: colorList[3])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[3])
                                self.arrowResult = colorList[3]
                            }
                        ColorCircle(hexnum: colorList[4])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[4])
                                self.arrowResult = colorList[4]
                            }
                        ColorCircle(hexnum: colorList[5])
                            .onTapGesture {
                                self.arrowColor = Color(hex: colorList[5])
                                self.arrowResult = colorList[5]
                            }
                    }
                    .padding()
                }
            }
            HStack{
                NavigationLink(destination: Step4Result(backResult: $backResult, arrowResult: $arrowResult), isActive: $labCheck){
                    SmallNavyButton(name: "Check", action: {labCheck = true})
                }
            }
        }
    }
}

struct Step4Lab_Previews: PreviewProvider {
    static var previews: some View {
        Step4Lab()
    }
}
