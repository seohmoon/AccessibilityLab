import SwiftUI

struct Step2Intro: View {
    @State var bt1: Bool = false
    @State var bt2: Bool = false
    @State var bt3: Bool = false
    @State var bt4: Bool = false
    @State var bt5: Bool = false
    @State var bt6: Bool = false
    @State var buttonNum: Int = 0
    
    var body: some View {
        VStack{
            Text("Step 2")
                .foregroundColor(Color(hex: "121C72"))
                .font(.custom("EF_jejudoldam", size: 31))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 10))
            Text("Study about Guidelines")
                .font(.custom("The Jamsil 4 Medium", size: 29))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 10, leading: 35, bottom: 5, trailing: 10))
            
                Image("s2intro")
                    .resizable()
                    .frame(width: 328, height: 220)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                VStack{
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt1){
                            Step2Button(name: "VoiceOver", action: {bt1 = true
                                buttonNum = 1
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt2){
                            Step2Button(name: "Color", action: {bt2 = true
                                buttonNum = 2
                            })
                        }
                    }
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt3){
                            Step2Button(name: "Text", action: {bt3 = true
                                buttonNum = 3
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt4){
                            Step2Button(name: "Effect", action: {bt4 = true
                                buttonNum = 4
                            })
                        }
                    }
                    HStack{
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt5){
                            Step2Button(name: "User Input", action: {bt5 = true
                                buttonNum = 5
                            })
                        }
                        NavigationLink(destination: Step2Explain(buttonNum : $buttonNum ), isActive: $bt6){
                            Step2Button(name: "Button", action: {bt6 = true
                                buttonNum = 6
                            })
                        }
                    }
                }
        }
    }
}

struct Step2Intro_Previews: PreviewProvider {
    static var previews: some View {
        Step2Intro()
    }
}
    
