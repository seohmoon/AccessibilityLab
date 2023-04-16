import SwiftUI

struct Step4Lab: View {
    @State var labCheck: Bool = false
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
                        ColorCircle(hexnum: "4C48FF")
                            .onTapGesture {
                                self.backColor = Color(hex: "4C48FF")
                            }
                        ColorCircle(hexnum: "00E878")
                            .onTapGesture {
                                self.backColor = Color(hex: "00E878")
                            }
                        ColorCircle(hexnum: "E6FF9F")
                            .onTapGesture {
                                self.backColor = Color(hex: "E6FF9F")
                            }
                        ColorCircle(hexnum: "FFFFFF")
                            .onTapGesture {
                                self.backColor = Color(hex: "FFFFFF")
                            }
                        ColorCircle(hexnum: "FFADAD")
                            .onTapGesture {
                                self.backColor = Color(hex: "FFADAD")
                            }
                        ColorCircle(hexnum: "FF0000")
                            .onTapGesture {
                                self.backColor = Color(hex: "FF0000")
                            }
                    }
                    .padding()
                    
                    HStack{
                        Text("Arrow")
                            .foregroundColor(Color(hex: "121C72"))
                        Spacer()
                        ColorCircle(hexnum: "4C48FF")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "4C48FF")
                            }
                        ColorCircle(hexnum: "00E878")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "00E878")
                            }
                        ColorCircle(hexnum: "E6FF9F")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "E6FF9F")
                            }
                        ColorCircle(hexnum: "FFFFFF")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "FFFFFF")
                            }
                        ColorCircle(hexnum: "FFADAD")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "FFADAD")
                            }
                        ColorCircle(hexnum: "FF0000")
                            .onTapGesture {
                                self.arrowColor = Color(hex: "FF0000")
                            }
                        
                        
//                        Circle()
//                            .fill(Color(hex: "4C48FF"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "4C48FF")
//                            }
//                        Circle()
//                            .fill(Color(hex: "00E878"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "00E878")
//                            }
//                        Circle()
//                            .fill(Color(hex: "E6FF9F"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "E6FF9F")
//                            }
//
//                        Circle()
//                            .fill(Color(hex: "FFFFFF"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "FFFFFF")
//                            }
//                        Circle()
//                            .fill(Color(hex: "FFADAD"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "FFADAD")
//                            }
//                        Circle()
//                            .fill(Color(hex: "FF0000"))
//                            .frame(width: 30)
//                            .onTapGesture {
//                                self.arrowColor = Color(hex: "FF0000")
//                            }
                        
                    }
                    .padding()
                }
            }
            HStack{
                NavigationLink(destination: Step4Success(), isActive: $labCheck){
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
